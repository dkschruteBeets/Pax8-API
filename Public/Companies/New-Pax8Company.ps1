function New-Pax8Company {
	[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
	[CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
	param (
		[Parameter(Mandatory)]
		[string]$name,

		[Parameter(Mandatory)]
		[object]$address,

		[Parameter(Mandatory)]
		[string]$phone,

		[Parameter(Mandatory)]
		[string]$website,

		[string]$externalId,

		[Parameter(Mandatory)]
		[bool]$billOnBehalfOfEnabled,

		[Parameter(Mandatory)]
		[bool]$selfServiceAllowed,

		[Parameter(Mandatory)]
		[bool]$orderApprovedRequired
	)
	
	$endPoint = 'companies'
	Invoke-Pax8NewRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
