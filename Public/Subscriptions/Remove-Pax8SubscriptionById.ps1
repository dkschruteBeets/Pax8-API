function Remove-Pax8SubscriptionById {
	[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
	[CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
	param (
		[Parameter(Mandatory)]
		[ValidateScript({
				try {
					[System.Guid]::Parse($_) | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$subscriptionId,
		
		[ValidateScript({[DateTime]::ParseExact($_, "yyyy-MM-dd", $null)})]
		[string]$cancelDate
	)
	
	$endPoint = "subscriptions/$($subscriptionId)"
	Invoke-Pax8RemoveRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
