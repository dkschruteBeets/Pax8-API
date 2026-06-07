function Get-Pax8SubscriptionHistoryById {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$subscriptionId
    )

    $endPoint = "subscriptions/$($subscriptionId)/history"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
