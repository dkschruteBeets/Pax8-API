function New-Pax8Order {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param (
        [Parameter(Mandatory)]
        [guid]$companyId,

        [string]$orderedBy,

        [MailAddress]$orderedByUserEmail,

        [Parameter(Mandatory)]
        [array]$lineItems,

        [bool]$isMock
    )

    $endPoint = 'orders'
    Invoke-Pax8NewRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
