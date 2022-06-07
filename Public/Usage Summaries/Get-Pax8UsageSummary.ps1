function Get-Pax8UsageSummary {
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
		[string]$subscriptionId,

		[Parameter(ParameterSetName = 'Paging')]
		[int]$page,

		[Parameter(ParameterSetName = 'Paging')]
		[ValidateRange(1, 200)]
		[int]$size,

		[ValidateSet('resourceGroup', 'currentCharges', 'partnerTotal')]
		[string]$sort,

		[ValidateScript({
				try {
					[System.Guid]::Parse($_) | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$resourceGroup,

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

	dynamicparam {
		if ($PSBoundParameters.ContainsKey('sort')) {
			$dynParamDictionary = [System.Management.Automation.RuntimeDefinedParameterDictionary]::new()		
			$dynParam = [System.Management.Automation.RuntimeDefinedParameter]::new('direction', [string], [System.Attribute[]]@(
					[Parameter]@{Position = 0}
					[ValidateSet]::new('asc', 'desc')
				))
			$dynParamDictionary.Add($dynParam.Name, $dynParam)
			$dynParamDictionary			
		}
	}

	begin {
		$endPoint = "subscriptions/$($subscriptionId)/usage-summaries"
	}
	
	process {
		Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
	}
}
