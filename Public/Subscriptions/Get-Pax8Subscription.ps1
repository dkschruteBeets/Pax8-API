function Get-Pax8Subscription {
	[CmdletBinding(DefaultParameterSetName = 'Paging')]
	param (
		[Parameter(ParameterSetName = 'Paging')]
		[int]$page,

		[Parameter(ParameterSetName = 'Paging')]
		[ValidateRange(1, 200)]
		[int]$size,

		[ValidateSet('quantity', 'startDate', 'endDate', 'createdDate', 'billingStart', 'price')]
		[string]$sort,

		[ValidateSet('Active', 'Cancelled', 'PendingManual', 'PendingAutomated', 'PendingCancel', 'WaitingForDetails', 'Trial', 'Converted', 'PendingActivation', 'Activated')]
		[string]$status,

		[ValidateSet('Monthly', 'Annual', '2-Year', '3-Year', 'One-Time', 'Trial', 'Activation')]
		[string]$billingTerm,

		[ValidateScript({
				try {
					[System.Guid]::Parse($_) | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$companyId,

		[ValidateScript({
				try {
					[System.Guid]::Parse($_) | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$productId,
		
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
		$endPoint = 'subscriptions'
	}
	
	process {
		Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
	}
}
