function Invoke-Pax8GetRequest {
    [CmdletBinding()]
    param (
        $Arguments,

        [string]$EndPoint
    )

    Add-Type -AssemblyName System.Web
    $queryParams = [System.Web.HttpUtility]::ParseQueryString([String]::Empty)

    switch ($Arguments.Keys) {
        'page' {
            $queryParams.Add('page', $Arguments.page)
        }
        'size' {
            $queryParams.Add('size', $Arguments.size)
        }
        'sort' {
            if ($Arguments.ContainsKey('direction')) {
                $queryParams.Add('sort', "$($Arguments.sort),$($Arguments.direction)")
            } else {
                $queryParams.Add('sort', $Arguments.sort)
            }
        }
        'city' {
            $queryParams.Add('city', $Arguments.city)
        }
        'companyId' {
            if (
                $EndPoint -eq 'orders' -or
                $EndPoint -eq 'invoices' -or
                $EndPoint -eq 'subscriptions' -or
                $EndPoint -eq 'invoices/draftItems' -or
                $EndPoint -match '^products/.+/pricing$' -or
                $EndPoint -match '^subscriptions/.+/usage-summaries$'
            ) {
                $queryParams.Add('companyId', $Arguments.companyId)
            }
        }
        'country' {
            $queryParams.Add('country', $Arguments.country)
        }
        'billingTerm' {
            $queryParams.Add('billingTerm', $Arguments.billingTerm)
        }
        'invoiceDate' {
            $queryParams.Add('invoiceDate', $Arguments.invoiceDate)
        }
        'invoiceDateRangeStart' {
            $queryParams.Add('invoiceDateRangeStart', $Arguments.invoiceDateRangeStart)
        }
        'invoiceDateRangeEnd' {
            $queryParams.Add('invoiceDateRangeEnd', $Arguments.invoiceDateRangeEnd)
        }
        'monthOffset' {
            $queryParams.Add('monthOffset', $Arguments.monthOffset)
        }
        'dueDate' {
            $queryParams.Add('dueDate', $Arguments.dueDate)
        }
        'stateOrProvince' {
            $queryParams.Add('stateOrProvince', $Arguments.stateOrProvince)
        }
        'postalCode' {
            $queryParams.Add('postalCode', $Arguments.postalCode)
        }
        'selfServiceAllowed' {
            $queryParams.Add('selfServiceAllowed', $Arguments.selfServiceAllowed)
        }
        'total' {
            $queryParams.Add('total', $Arguments.total)
        }
        'balance' {
            $queryParams.Add('balance', $Arguments.balance)
        }
        'carriedBalance' {
            $queryParams.Add('carriedBalance', $Arguments.carriedBalance)
        }
        'billOnBehalfOfEnabled' {
            $queryParams.Add('billOnBehalfOfEnabled', $Arguments.billOnBehalfOfEnabled)
        }
        'orderApprovalRequired' {
            $queryParams.Add('orderApprovalRequired', $Arguments.orderApprovalRequired)
        }
        'productId' {
            if (
                $EndPoint -eq 'subscriptions' -or
                $EndPoint -match '^usage-summaries/.+/usage-lines$'
            ) {
                $queryParams.Add('productId', $Arguments.productId)
            }
        }
        'search' {
            $queryParams.Add('search', $Arguments.search)
        }
        'resourceGroup' {
            $queryParams.Add('resourceGroup', $Arguments.resourceGroup)
        }
        'status' {
            $queryParams.Add('status', $Arguments.status)
        }
        'usageDate' {
            $queryParams.Add('usageDate', $Arguments.usageDate)
        }
        'vendorName' {
            $queryParams.Add('vendorName', $Arguments.vendorName)
        }
    }

    $uriRequest = [System.UriBuilder]"$Pax8RestUrl/$EndPoint"
    $uriRequest.Query = $queryParams.ToString()

    $requestArgs = @{
        Uri    = $uriRequest.Uri.OriginalString
        Method = 'Get'
    }

    if ($Arguments.all) {
        $result = Invoke-Pax8AllRequest -Arguments $requestArgs
    } else {
        $result = Invoke-Pax8MasterRequest -Arguments $requestArgs
    }

    Get-Pax8ResponseContentOrResult -Response $result
}
