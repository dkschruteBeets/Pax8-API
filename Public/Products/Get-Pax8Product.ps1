function Get-Pax8Product {
	[CmdletBinding(DefaultParameterSetName = 'Paging')]
	param (
		[Parameter(ParameterSetName = 'Paging')]
		[int]$page,

		[Parameter(ParameterSetName = 'Paging')]
		[ValidateRange(1, 200)]
		[int]$size,

		[ValidateSet('name', 'vendor')]
		[string]$sort,

		[string]$vendorName,
		
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
		$endPoint = 'products'
	}
	
	process {
		Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
	}
}
