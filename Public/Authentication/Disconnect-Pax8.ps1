function Disconnect-Pax8 {
	[CmdletBinding()]
	param ()
	
	try {
		Remove-Variable -Name Pax8Token -Scope Script -Force -ErrorAction Stop
		Write-Verbose -Message "Variable 'Pax8Token' has been successfully removed."
	} catch {
		$PSCmdlet.ThrowTerminatingError($_)
	}
}
