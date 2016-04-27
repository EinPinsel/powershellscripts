Set-ExecutionPolicy RemoteSigned


function Install-DSCResources
{
  Find-Modules -Tag DSCResourceKit | Install-Module
}

function Get-Admin
{
  Start-Process powershell.exe -Verb runas
}

