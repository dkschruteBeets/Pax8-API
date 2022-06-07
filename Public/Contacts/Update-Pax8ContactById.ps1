function Update-Pax8ContactById {
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

		[Parameter(Mandatory)]
		[ValidateScript({
				try {
					[System.Guid]::Parse($_) | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$contactId,

		[Parameter(Mandatory)]
		[string]$firstName,

		[Parameter(Mandatory)]
		[string]$lastName,

		[Parameter(Mandatory)]
		[string]$email,

		[Parameter(Mandatory)]
		[string]$phone,
		
		[array]$types
	)
	
	if ($PSBoundParameters.ContainsKey('types')) {
		$typeEnums = @('Admin', 'Billing', 'Technical')	
		if ($typeEnums -notcontains $types.type) {
			throw 'Type should be one of Admin, Billing or Technical.'
		}
	}
	
	$endPoint = "companies/$($companyId)/contacts/$($contactId)"
	Invoke-Pax8UpdateRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
