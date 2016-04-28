function Set-MachineTrusted
{
  <#
      .SYNOPSIS
      Adds the specified Host into the TrustedHosts for WSMan
      .DESCRIPTION
      To enable PSRemoting quick and dirty,
      you can add the host into the TrustedHosts 
  #>
  [CmdletBinding()]
  param
  (
    [String]
    [Parameter(Mandatory=$true)]
    $TrustedHost
  )
  
  Write-Verbose "The specified Host is $TrustedHost"
  try
  {
    Set-Item -Path WSMan:\localhost\Client\TrustedHosts -Value $HyperVHost -Concatenate -Force -ErrorAction Stop
    Write-Verbose "The $TrustedHost got added to TrustedHosts"
  }
  catch
  {
    "Error was $_"
    $line = $_.InvocationInfo.ScriptLineNumber
    "Error was in Line $line"
  }
}
