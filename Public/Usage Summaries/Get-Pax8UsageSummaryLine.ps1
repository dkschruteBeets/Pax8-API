function Get-Pax8UsageSummaryLine {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [guid]$usageSummaryId,

        [Parameter(Mandatory)]
        [ValidateScript({ [DateTime]::ParseExact($_, "yyyy-MM-dd", $null) })]
        [string]$usageDate,

        [guid]$productId
    )

    $endPoint = "usage-summaries/$($usageSummaryId)/usage-lines"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
