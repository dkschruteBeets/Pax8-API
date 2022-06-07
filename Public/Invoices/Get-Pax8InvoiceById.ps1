function Get-Pax8InvoiceById {
	[CmdletBinding()]
	param (
		[Parameter(Mandatory)]
		[ValidateScript({
				try {
					[System.Guid]::Parse($_) | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$invoiceId
	)
	
	$endPoint = "invoices/$($invoiceId)"
	Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
