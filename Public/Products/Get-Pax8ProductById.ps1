function Get-Pax8ProductById {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$productId
    )

    $endPoint = "products/$($productId)"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
