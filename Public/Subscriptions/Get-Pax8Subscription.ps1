function Get-Pax8Subscription {
    [CmdletBinding(DefaultParameterSetName = 'Paging')]
    param (
        [Parameter(ParameterSetName = 'Paging')]
        [int]$page,

        [Parameter(ParameterSetName = 'Paging')]
        [ValidateRange(1, 200)]
        [int]$size,

        [string]$sort,

        [string]$status,

        [string]$billingTerm,

        [guid]$companyId,

        [guid]$productId,

        [Parameter(ParameterSetName = 'All')]
        [switch]$all
    )

    dynamicparam {
        if ($PSBoundParameters.ContainsKey('sort')) {
            $dynParamDictionary = [System.Management.Automation.RuntimeDefinedParameterDictionary]::new()
            $dynParam = [System.Management.Automation.RuntimeDefinedParameter]::new('direction', [string], [System.Attribute[]]@(
                    [Parameter]@{Position = 0 }
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
