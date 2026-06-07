function Get-Pax8InvoiceDraftItem {
    [CmdletBinding(DefaultParameterSetName = 'Paging')]
    param (
        [Parameter(ParameterSetName = 'Paging')]
        [int]$page,

        [Parameter(ParameterSetName = 'Paging')]
        [ValidateRange(1, 200)]
        [int]$size,

        [ValidateRange(0, 1)]
        [int]$monthOffset = 1,

        [guid]$companyId,

        [Parameter(ParameterSetName = 'All')]
        [switch]$all
    )

    $endPoint = 'invoices/draftItems'
    if (-not $PSBoundParameters.ContainsKey('monthOffset')) {
        $PSBoundParameters['monthOffset'] = $monthOffset
    }

    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
