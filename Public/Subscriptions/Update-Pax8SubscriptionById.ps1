function Update-Pax8SubscriptionById {
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

		[Parameter(Mandatory)]
		[int]$quantity,

		[Parameter(Mandatory)]
		[ValidateScript({[DateTime]::ParseExact($_, "yyyy-MM-dd", $null)})]
		[string]$startDate,

		[ValidateScript({[DateTime]::ParseExact($_, "yyyy-MM-dd", $null)})]
		[string]$endDate,

		[double]$price,

		[Parameter(Mandatory)]
		[ValidateSet('Monthly', 'Annual', '2-Year', '3-Year', '1-Time', 'Trial')]
		[string]$billingTerm,
		
		[array]$provisioningDetails
	)
	
	$endPoint = "subscriptions/$($subscriptionId)"
	Invoke-Pax8UpdateRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
