function Get-Pax8UsageSummaryById {
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
		[string]$usageSummaryId
	)
	
	$endPoint = "usage-summaries/$($usageSummaryId)"
	Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
