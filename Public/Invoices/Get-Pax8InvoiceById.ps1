function Get-Pax8InvoiceById {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [guid]$invoiceId
    )

    $endPoint = "invoices/$($invoiceId)"
    Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
