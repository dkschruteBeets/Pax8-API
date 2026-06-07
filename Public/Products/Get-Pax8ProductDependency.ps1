function Get-Pax8ProductDependency {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$productId
    )

    $endPoint = "products/$($productId)/dependencies"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
