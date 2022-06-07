function New-Pax8Order {
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
		[string]$companyId,

		[ValidateSet('Pax8 Partner', 'Customer', 'Pax8')]
		[string]$orderedBy,

		[ValidateScript({
				try {
					[MailAddress]$_ | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$orderedByUserEmail,

		[Parameter(Mandatory)]
		[array]$lineItems,
		
		[bool]$isMock
	)

	$requiredLineItemParams = @('productId', 'lineItemNumber')
	foreach ($parameter in $requiredLineItemParams) {
		if ($lineItems.Keys -notcontains $parameter) {
			throw "Missing required parameter for 'lineItems': $parameter"
		}
	}
	
	$endPoint = 'orders'
	Invoke-Pax8NewRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
