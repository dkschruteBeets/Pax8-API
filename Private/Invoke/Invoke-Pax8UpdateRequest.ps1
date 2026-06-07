function Invoke-Pax8UpdateRequest {
    [CmdletBinding(SupportsShouldProcess)]
    param (
        $Arguments,

        [string]$EndPoint,

        [string]$Method = 'Put'
    )

    $body = @{}

    switch ($Arguments.Keys) {
        'name' {
            $body.Add('name', $Arguments.name)
        }
        'address' {
            $body.Add('address', $Arguments.address)
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
        'quantity' {
            $body.Add('quantity', $Arguments.quantity)
        }
        'startDate' {
            $body.Add('startDate', $Arguments.startDate)
        }
        'endDate' {
            $body.Add('endDate', $Arguments.endDate)
        }
        'price' {
            $body.Add('price', $Arguments.price)
        }
        'billingTerm' {
            $body.Add('billingTerm', $Arguments.billingTerm)
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
        'phone' {
            $body.Add('phone', $Arguments.phone)
        }
        'provisioningDetails' {
            $body.Add('provisioningDetails', $Arguments.provisioningDetails)
        }
        'types' {
            $body.Add('types', $Arguments.types)
        }
    }

    if ($body.Count -eq 0) {
        throw 'At least one update field must be specified.'
    }

    $uriRequest = [System.UriBuilder]"$Pax8RestUrl/$EndPoint"

    $requestArgs = @{
        Uri    = $uriRequest.Uri.OriginalString
        Method = $Method
        Body   = ($body | ConvertTo-Json -Depth 5)
    }

    if ($PSCmdlet.ShouldProcess($requestArgs.Uri, 'Update')) {
        $result = Invoke-Pax8MasterRequest -Arguments $requestArgs
    }

    Get-Pax8ResponseContentOrResult -Response $result
}
