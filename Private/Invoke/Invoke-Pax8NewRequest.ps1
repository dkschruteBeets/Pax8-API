function Invoke-Pax8NewRequest {
    [CmdletBinding(SupportsShouldProcess)]
    param (
        $Arguments,

        [string]$EndPoint
    )

    Add-Type -AssemblyName System.Web
    $queryParams = [System.Web.HttpUtility]::ParseQueryString([String]::Empty)

    $body = @{}

    switch ($Arguments.Keys) {
        'companyId' {
            if ($EndPoint -eq 'orders') {
                $body.Add('companyId', $Arguments.companyId)
            }
        }
        'orderedBy' {
            $body.Add('orderedBy', $Arguments.orderedBy)
        }
        'orderedByUserEmail' {
            $body.Add('orderedByUserEmail', $Arguments.orderedByUserEmail.Address)
        }
        'firstName' {
            $body.Add('firstName', $Arguments.firstName)
        }
        'lastName' {
            $body.Add('lastName', $Arguments.lastName)
        }
        'email' {
            $body.Add('email', $Arguments.email.Address)
        }
        'name' {
            $body.Add('name', $Arguments.name)
        }
        'address' {
            $body.Add('address', $Arguments.address)
        }
        'phone' {
            $body.Add('phone', $Arguments.phone)
        }
        'website' {
            $body.Add('website', $Arguments.website)
        }
        'billOnBehalfOfEnabled' {
            $body.Add('billOnBehalfOfEnabled', $Arguments.billOnBehalfOfEnabled)
        }
        'selfServiceAllowed' {
            $body.Add('selfServiceAllowed', $Arguments.selfServiceAllowed)
        }
        'orderApprovalRequired' {
            $body.Add('orderApprovalRequired', $Arguments.orderApprovalRequired)
        }
        'externalId' {
            $body.Add('externalId', $Arguments.externalId)
        }
        'contacts' {
            $body.Add('contacts', $Arguments.contacts)
        }
        'types' {
            $body.Add('types', $Arguments.types)
        }
        'lineItems' {
            $body.Add('lineItems', $Arguments.lineItems)
        }
        'isMock' {
            $queryParams.Add('isMock', $Arguments.isMock)
        }
    }

    $uriRequest = [System.UriBuilder]"$Pax8RestUrl/$EndPoint"
    $uriRequest.Query = $queryParams.ToString()

    $requestArgs = @{
        Uri    = $uriRequest.Uri.OriginalString
        Method = 'Post'
        Body   = ($body | ConvertTo-Json -Depth 5)
    }

    if ($PSCmdlet.ShouldProcess($requestArgs.Uri, 'Create')) {
        $result = Invoke-Pax8MasterRequest -Arguments $requestArgs
    }

    Get-Pax8ResponseContentOrResult -Response $result
}
