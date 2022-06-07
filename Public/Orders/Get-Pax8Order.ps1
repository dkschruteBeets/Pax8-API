function Get-Pax8Order {
	[CmdletBinding(DefaultParameterSetName = 'Paging')]
	param (
		[Parameter(ParameterSetName = 'Paging')]
		[int]$page,

		[Parameter(ParameterSetName = 'Paging')]
		[ValidateRange(1, 200)]
		[int]$size,

		[ValidateScript({
				try {
					[System.Guid]::Parse($_) | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$companyId,

		[Parameter(ParameterSetName = 'All')]
		[switch]$all
	)
	
	$endPoint = 'orders'
	Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
