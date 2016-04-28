function Set-HyperVHostTrusted
{
  <#
      .SYNOPSIS
      Retrieves the Hyper-V Host and adds it to the TrustedHosts for WSMan
      .DESCRIPTION
      The Hyper-V Host will be stored in the registry. To enable PSRemoting quick and dirty,
      you can add the host into the TrustedHosts 
  #>
  $HyperVHost = (get-item 'HKLM:\SOFTWARE\Microsoft\Virtual Machine\Guest\Parameters').GetValue('HostName')
  Set-Item -Path WSMan:\localhost\Client\TrustedHosts -Value $HyperVHost -Concatenate -Force
}

