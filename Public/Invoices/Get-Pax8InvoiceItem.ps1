function Get-Pax8InvoiceItem {
	[CmdletBinding(DefaultParameterSetName = 'Paging')]
	param (
		[Parameter(Mandatory)]
		[ValidateScript({
				try {
					[System.Guid]::Parse($_) | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$invoiceId,

		[Parameter(ParameterSetName = 'Paging')]
		[int]$page,

		[Parameter(ParameterSetName = 'Paging')]
		[ValidateRange(1, 200)]
		[int]$size,
		
		[Parameter(ParameterSetName = 'All')]
		[switch]$all
	)
	
	$endPoint = "invoices/$($invoiceId)/items"
	Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
