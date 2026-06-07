function Get-Pax8Company365TenantId {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [guid]$companyId
    )

    # This app API endpoint is a convenience path, not part of the documented Pax8 partner API.
    $endPoint = "companies/$($companyId)/msTenantId?t=1652477903740"
    Invoke-Pax8TenantIdRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
