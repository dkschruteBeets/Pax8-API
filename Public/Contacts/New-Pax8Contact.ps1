function New-Pax8Contact {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param (
        [Parameter(Mandatory)]
        [guid]$companyId,

        [Parameter(Mandatory)]
        [string]$firstName,

        [Parameter(Mandatory)]
        [string]$lastName,

        [Parameter(Mandatory)]
        [MailAddress]$email,

        [Parameter(Mandatory)]
        [string]$phone,

        [array]$types
    )

    $endPoint = "companies/$($companyId)/contacts"
    Invoke-Pax8NewRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
