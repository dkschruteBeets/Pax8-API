function Update-Pax8CompanyById {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param (
        [Parameter(Mandatory)]
        [guid]$companyId,

        [string]$name,

        [object]$address,

        [string]$phone,

        [string]$website,

        [string]$externalId,

        [bool]$billOnBehalfOfEnabled,

        [bool]$selfServiceAllowed,

        [bool]$orderApprovalRequired
    )

    $endPoint = "companies/$($companyId)"
    Invoke-Pax8UpdateRequest -Arguments $PSBoundParameters -EndPoint $endPoint -Method Patch
}
