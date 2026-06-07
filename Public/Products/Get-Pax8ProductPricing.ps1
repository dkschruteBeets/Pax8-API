function Get-Pax8ProductPricing {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$productId,

        [guid]$companyId
    )

    $endPoint = "products/$($productId)/pricing"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
