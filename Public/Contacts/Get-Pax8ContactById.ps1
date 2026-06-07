function Get-Pax8ContactById {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [guid]$companyId,

        [Parameter(Mandatory)]
        [guid]$contactId
    )

    $endPoint = "companies/$($companyId)/contacts/$($contactId)"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
