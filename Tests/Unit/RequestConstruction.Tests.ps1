BeforeAll {
    $repoRoot = Resolve-Path (Join-Path $PSScriptRoot '../..')
    Import-Module (Join-Path $repoRoot 'Pax8-API.psd1') -Force

    Add-Type -AssemblyName System.Web

    function Get-CapturedRequest {
        $script:CapturedRequests.ToArray()
    }

    function Get-QueryValue {
        param (
            [Parameter(Mandatory)]
            [string]$Uri,

            [Parameter(Mandatory)]
            [string]$Name
        )

        $builder = [System.UriBuilder]$Uri
        $query = [System.Web.HttpUtility]::ParseQueryString($builder.Query.TrimStart('?'))
        $query[$Name]
    }
}

Describe 'PAX8 request construction' {
    BeforeEach {
        InModuleScope 'Pax8-API' {
            $script:Pax8RestUrl = 'https://api.example.test/v1'
        }

        $script:CapturedRequests = [System.Collections.Generic.List[object]]::new()

        Mock -ModuleName 'Pax8-API' -CommandName Invoke-Pax8MasterRequest -MockWith {
            param ($Arguments)

            $script:CapturedRequests.Add($Arguments)
            [pscustomobject]@{
                ok = $true
            }
        }
    }

    It 'adds companyId as a query parameter for product pricing' {
        $companyId = [guid]::NewGuid()

        Get-Pax8ProductPricing -productId 'product-1' -companyId $companyId | Out-Null

        $request = Get-CapturedRequest
        $request.Method | Should -Be 'Get'
        $request.Uri | Should -Be "https://api.example.test:443/v1/products/product-1/pricing?companyId=$companyId"
    }

    It 'keeps contact list companyId in the path only' {
        $companyId = [guid]::NewGuid()

        Get-Pax8Contact -companyId $companyId -page 1 -size 10 | Out-Null

        $request = Get-CapturedRequest
        $request.Method | Should -Be 'Get'
        $request.Uri | Should -Be "https://api.example.test:443/v1/companies/$companyId/contacts?page=1&size=10"
        Get-QueryValue -Uri $request.Uri -Name 'companyId' | Should -BeNullOrEmpty
    }

    It 'omits path companyId from contact create body and serializes email as a string' {
        $companyId = [guid]::NewGuid()

        New-Pax8Contact `
            -companyId $companyId `
            -firstName 'John' `
            -lastName 'Doe' `
            -email 'john@example.com' `
            -phone '555-555-5555' `
            -Confirm:$false | Out-Null

        $request = Get-CapturedRequest
        $body = $request.Body | ConvertFrom-Json

        $request.Method | Should -Be 'Post'
        $request.Uri | Should -Be "https://api.example.test:443/v1/companies/$companyId/contacts"
        $body.PSObject.Properties.Name | Should -Not -Contain 'companyId'
        $body.email | Should -Be 'john@example.com'
        $body.email.GetType().FullName | Should -Be 'System.String'
    }

    It 'includes company contacts and order approval flag in company create body' {
        New-Pax8Company `
            -Name 'Initech' `
            -address @{ street = '4120 Freidrich Ln'; city = 'Austin' } `
            -phone '999-999-9999' `
            -website 'https://initech.example' `
            -billOnBehalfOfEnabled:$false `
            -selfServiceAllowed:$true `
            -orderApprovalRequired:$true `
            -contacts @(@{ firstName = 'Peter'; lastName = 'Gibbons'; email = 'pgibbons@example.com'; phone = '555-555-5555' }) `
            -Confirm:$false | Out-Null

        $request = Get-CapturedRequest
        $body = $request.Body | ConvertFrom-Json

        $request.Method | Should -Be 'Post'
        $request.Uri | Should -Be 'https://api.example.test:443/v1/companies'
        $body.orderApprovalRequired | Should -BeTrue
        $body.contacts[0].firstName | Should -Be 'Peter'
    }

    It 'uses PATCH and a partial body for company updates' {
        $companyId = [guid]::NewGuid()

        Update-Pax8CompanyById -companyId $companyId -orderApprovalRequired:$false -Confirm:$false | Out-Null

        $request = Get-CapturedRequest
        $body = $request.Body | ConvertFrom-Json

        $request.Method | Should -Be 'Patch'
        $request.Uri | Should -Be "https://api.example.test:443/v1/companies/$companyId"
        $body.PSObject.Properties.Name | Should -Contain 'orderApprovalRequired'
        $body.orderApprovalRequired | Should -BeFalse
    }

    It 'rejects company updates without update fields' {
        $companyId = [guid]::NewGuid()

        { Update-Pax8CompanyById -companyId $companyId -Confirm:$false } | Should -Throw 'At least one update field must be specified.'
    }

    It 'rejects subscription updates without update fields' {
        { Update-Pax8SubscriptionById -subscriptionId 'subscription-1' -Confirm:$false } | Should -Throw 'At least one update field must be specified.'
    }

    It 'passes product search through as a query parameter' {
        Get-Pax8Product -search 'backup' -page 1 -size 10 | Out-Null

        $request = Get-CapturedRequest

        $request.Method | Should -Be 'Get'
        $request.Uri | Should -Be 'https://api.example.test:443/v1/products?search=backup&page=1&size=10'
    }

    It 'builds draft invoice item query parameters' {
        $companyId = [guid]::NewGuid()

        Get-Pax8InvoiceDraftItem -companyId $companyId -monthOffset 1 -page 1 -size 10 | Out-Null

        $request = Get-CapturedRequest

        $request.Method | Should -Be 'Get'
        $request.Uri | Should -Be "https://api.example.test:443/v1/invoices/draftItems?companyId=$companyId&monthOffset=1&page=1&size=10"
    }

    It 'uses the documented draft invoice item month offset default' {
        Get-Pax8InvoiceDraftItem -page 1 -size 10 | Out-Null

        $request = Get-CapturedRequest

        Get-QueryValue -Uri $request.Uri -Name 'monthOffset' | Should -Be '1'
    }

    It 'passes through future invoice filter and sort values' {
        Get-Pax8Invoice -status 'FutureStatus' -sort 'futureField' -direction 'desc' -page 1 -size 10 | Out-Null

        $request = Get-CapturedRequest

        Get-QueryValue -Uri $request.Uri -Name 'status' | Should -Be 'FutureStatus'
        Get-QueryValue -Uri $request.Uri -Name 'sort' | Should -Be 'futureField,desc'
    }

    It 'passes through future product sort values' {
        Get-Pax8Product -sort 'futureSort' -direction 'asc' -page 1 -size 10 | Out-Null

        $request = Get-CapturedRequest

        Get-QueryValue -Uri $request.Uri -Name 'sort' | Should -Be 'futureSort,asc'
    }

    It 'passes through future subscription filter, sort, and update values' {
        Get-Pax8Subscription -billingTerm 'FutureTerm' -status 'FutureStatus' -sort 'futureSort' -direction 'desc' -page 1 -size 10 | Out-Null
        Update-Pax8SubscriptionById -subscriptionId 'subscription-1' -billingTerm 'FutureTerm' -Confirm:$false | Out-Null

        $requests = Get-CapturedRequest
        $subscriptionBody = $requests[1].Body | ConvertFrom-Json

        Get-QueryValue -Uri $requests[0].Uri -Name 'billingTerm' | Should -Be 'FutureTerm'
        Get-QueryValue -Uri $requests[0].Uri -Name 'status' | Should -Be 'FutureStatus'
        Get-QueryValue -Uri $requests[0].Uri -Name 'sort' | Should -Be 'futureSort,desc'
        $subscriptionBody.billingTerm | Should -Be 'FutureTerm'
    }

    It 'rejects unsupported sort directions' {
        { Get-Pax8Product -sort 'futureSort' -direction 'sideways' -page 1 -size 10 } | Should -Throw
    }

    It 'passes through future order values' {
        New-Pax8Order `
            -companyId ([guid]::NewGuid()) `
            -orderedBy 'FutureActor' `
            -orderedByUserEmail 'buyer@example.com' `
            -lineItems @(@{ productId = 'product-1'; lineItemNumber = 1; quantity = 1; billingTerm = 'FutureTerm' }) `
            -Confirm:$false | Out-Null

        $request = Get-CapturedRequest
        $orderBody = $request.Body | ConvertFrom-Json

        $orderBody.orderedBy | Should -Be 'FutureActor'
        $orderBody.lineItems[0].billingTerm | Should -Be 'FutureTerm'
    }

    It 'rejects unsupported draft invoice item month offsets' {
        { Get-Pax8InvoiceDraftItem -monthOffset 2 -page 1 -size 10 } | Should -Throw
    }
}

Describe 'PAX8 response shaping' {
    BeforeEach {
        InModuleScope 'Pax8-API' {
            $script:Pax8RestUrl = 'https://api.example.test/v1'
        }
    }

    It 'returns content items from paged responses' {
        Mock -ModuleName 'Pax8-API' -CommandName Invoke-Pax8MasterRequest -MockWith {
            [pscustomobject]@{
                content = @(
                    [pscustomobject]@{ id = 'product-1' }
                    [pscustomobject]@{ id = 'product-2' }
                )
                page    = [pscustomobject]@{
                    totalElements = 2
                }
            }
        }

        $result = Get-Pax8Product -page 0 -size 5

        @($result).Count | Should -Be 2
        $result[0].id | Should -Be 'product-1'
    }

    It 'returns no output from empty paged responses' {
        Mock -ModuleName 'Pax8-API' -CommandName Invoke-Pax8MasterRequest -MockWith {
            [pscustomobject]@{
                content = @()
                page    = [pscustomobject]@{
                    totalElements = 0
                    totalPages    = 0
                    size          = 5
                    number        = 0
                }
            }
        }

        $result = Get-Pax8InvoiceDraftItem -companyId ([guid]::NewGuid()) -monthOffset 1 -page 0 -size 5

        @($result).Count | Should -Be 0
    }

    It 'returns single-object responses without a content property' {
        $companyId = [guid]::NewGuid()

        Mock -ModuleName 'Pax8-API' -CommandName Invoke-Pax8MasterRequest -MockWith {
            [pscustomobject]@{
                id   = $companyId
                name = 'Initech'
            }
        }

        $result = Get-Pax8CompanyById -companyId $companyId

        $result.id | Should -Be $companyId
        $result.name | Should -Be 'Initech'
    }
}
