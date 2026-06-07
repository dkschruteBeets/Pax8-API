function Remove-Pax8ContactById {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param (
        [Parameter(Mandatory)]
        [guid]$companyId,

        [Parameter(Mandatory)]
        [guid]$contactId
    )

    $endPoint = "companies/$($companyId)/contacts/$($contactId)"
    Invoke-Pax8RemoveRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
