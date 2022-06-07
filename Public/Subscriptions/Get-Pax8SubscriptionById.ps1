function Get-Pax8SubscriptionById {
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
		[string]$subscriptionId
	)
	
	$endPoint = "subscriptions/$($subscriptionId)"
	Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
