$Public = @(Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue -Recurse)
$Private = @(Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue -Recurse)

foreach ($import in @($Public + $Private)) {
    try {
        . $import.fullName
    } catch {
        Write-Error -Message "Failed to import function $($import.fullName): $_"
    }
}

Export-ModuleMember -Function $Public.Basename -Alias *
