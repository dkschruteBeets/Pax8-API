function Get-Pax8ProductProvisioningDetail {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$productId
    )

    $endPoint = "products/$($productId)/provision-details"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
