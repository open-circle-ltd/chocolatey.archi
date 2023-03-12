$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = 'https://www.archimatetool.com/downloads/archi.php?/5.0.0/Archi-Win64-Setup-5.0.0.exe'
$checksumPackage = '68f4e10287e6e86df492acb38d76914ccce54a93ff5280816771cc5be8c80d90378484a2fd30dd715083d388d7d8a63a2436aa780f9ca4ca7d678ee75c713524'
$urlPackage64 = 'https://www.archimatetool.com/downloads/archi.php?/5.0.0/Archi-Win64-Setup-5.0.0.exe'
$checksumPackage64 = '68f4e10287e6e86df492acb38d76914ccce54a93ff5280816771cc5be8c80d90378484a2fd30dd715083d388d7d8a63a2436aa780f9ca4ca7d678ee75c713524'


$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = $urlPackage
    checksum       = $checksumPackage
    checksumType   = 'SHA512'
    url64          = $urlPackage64
    checksum64     = $checksumPackage64
    checksumType64 = 'SHA512'
    silentArgs     = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
    ValidExitCodes = @(0, 1000, 1101)
}

Install-ChocolateyPackage @packageArgs
