function Update-Pax8ContactById {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param (
        [Parameter(Mandatory)]
        [guid]$companyId,

        [Parameter(Mandatory)]
        [guid]$contactId,

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

    $endPoint = "companies/$($companyId)/contacts/$($contactId)"
    Invoke-Pax8UpdateRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
