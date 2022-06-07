function Get-Pax8Contact {
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
		[string]$companyId,

		[Parameter(ParameterSetName = 'Paging')]
		[int]$page,

		[Parameter(ParameterSetName = 'Paging')]
		[ValidateRange(1, 200)]
		[int]$size,
		
		[Parameter(ParameterSetName = 'All')]
		[switch]$all
	)
	
	$endPoint = "companies/$($companyId)/contacts"
	Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
