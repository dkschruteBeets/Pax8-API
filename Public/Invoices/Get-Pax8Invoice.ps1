function Get-Pax8Invoice {
    [CmdletBinding(DefaultParameterSetName = 'Paging')]
    param (
        [Parameter(ParameterSetName = 'Paging')]
        [int]$page,

        [Parameter(ParameterSetName = 'Paging')]
        [ValidateRange(1, 200)]
        [int]$size,

        [string]$sort,

        [string]$status,

        [ValidateScript({ [DateTime]::ParseExact($_, "yyyy-MM-dd", $null) })]
        [string]$invoiceDate,

        [ValidateScript({ [DateTime]::ParseExact($_, "yyyy-MM-dd", $null) })]
        [string]$invoiceDateRangeStart,

        [ValidateScript({ [DateTime]::ParseExact($_, "yyyy-MM-dd", $null) })]
        [string]$invoiceDateRangeEnd,

        [ValidateScript({ [DateTime]::ParseExact($_, "yyyy-MM-dd", $null) })]
        [string]$dueDate,

        [double]$total,

        [double]$balance,

        [double]$carriedBalance,

        [guid]$companyId,

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
        $endPoint = 'invoices'
    }

    process {
        Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
    }
}
