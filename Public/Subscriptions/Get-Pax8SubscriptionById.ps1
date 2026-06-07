function Get-Pax8SubscriptionById {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$subscriptionId
    )

    $endPoint = "subscriptions/$($subscriptionId)"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
