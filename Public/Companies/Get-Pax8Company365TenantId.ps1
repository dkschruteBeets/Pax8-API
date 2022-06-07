function Get-Pax8Company365TenantId {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateScript({
                try {
                    [System.Guid]::Parse($_) | Out-Null; $true
                } catch {
                    $PSCmdlet.ThrowterminatingError($_)
                }
            })]
        [string]$companyId
    )
	
    $endPoint = "companies/$($companyId)/msTenantId?t=1652477903740"
    Invoke-Pax8TenantIdRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
