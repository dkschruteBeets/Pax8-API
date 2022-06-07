function Get-Pax8Invoice {
	[CmdletBinding(DefaultParameterSetName = 'Paging')]
	param (
		[Parameter(ParameterSetName = 'Paging')]
		[int]$page,

		[Parameter(ParameterSetName = 'Paging')]
		[ValidateRange(1, 200)]
		[int]$size,

		[ValidateSet('invoiceDate', 'dueDate', 'status', 'partnerName', 'total', 'balance', 'carriedBalance')]
		[string]$sort,

		[Validateset('Unpaid', 'Paid', 'Void', 'Carried', 'Nothing Due')]
		[string]$status,

		[ValidateScript({[DateTime]::ParseExact($_, "yyyy-MM-dd", $null)})]
		[string]$invoiceDate,

		[ValidateScript({[DateTime]::ParseExact($_, "yyyy-MM-dd", $null)})]
		[string]$invoiceDateRangeStart,

		[ValidateScript({[DateTime]::ParseExact($_, "yyyy-MM-dd", $null)})]
		[string]$invoiceDateRangeEnd,

		[ValidateScript({[DateTime]::ParseExact($_, "yyyy-MM-dd", $null)})]
		[string]$dueDate,

		[double]$total,

		[double]$balance,

		[double]$carriedBalance,

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
		$endPoint = 'invoices'
	}
	
	process {
		Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
	}
}
