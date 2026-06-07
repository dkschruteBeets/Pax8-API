function Get-Pax8OrderById {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$orderId
    )

    $endPoint = "orders/$($orderId)"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
