function Update-Pax8SubscriptionById {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param (
        [Parameter(Mandatory)]
        [string]$subscriptionId,

        [double]$quantity,

        [string]$startDate,

        [string]$endDate,

        [double]$price,

        [string]$billingTerm,

        [array]$provisioningDetails
    )

    $endPoint = "subscriptions/$($subscriptionId)"
    Invoke-Pax8UpdateRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
