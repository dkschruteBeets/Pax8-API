function Remove-Pax8SubscriptionById {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param (
        [Parameter(Mandatory)]
        [string]$subscriptionId,

        [string]$cancelDate
    )

    $endPoint = "subscriptions/$($subscriptionId)"
    Invoke-Pax8RemoveRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
