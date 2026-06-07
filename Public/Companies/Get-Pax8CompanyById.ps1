function Get-Pax8CompanyById {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$companyId
    )

    $endPoint = "companies/$($companyId)"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
