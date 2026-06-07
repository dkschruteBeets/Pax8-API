function Get-Pax8UsageSummaryById {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [guid]$usageSummaryId
    )

    $endPoint = "usage-summaries/$($usageSummaryId)"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
