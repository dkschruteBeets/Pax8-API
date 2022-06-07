function Get-Pax8UsageSummaryLine {
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
		[string]$usageSummaryId,

		[Parameter(Mandatory)]
		[ValidateScript({[DateTime]::ParseExact($_, "yyyy-MM-dd", $null)})]
		[string]$usageDate,
		
		[ValidateScript({
				try {
					[System.Guid]::Parse($_) | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$productId
	)
	
	$endPoint = "usage-summaries/$($usageSummaryId)/usage-lines"
	Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
