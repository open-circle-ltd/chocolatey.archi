$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = 'https://www.github.com/archimatetool/archi.io/releases/download/570/Archi-Win64-Setup-5.7.0.exe'
$checksumPackage = '3ba9f01e8050c104a000e93ec7c840410552357c15053d5c067e721d1b881c05c0f7f490647894f83ff5ce2469c81f38c94e294880c5ac3f4d8308b07170c0f9'


$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = $urlPackage
    checksum       = $checksumPackage
    checksumType   = 'SHA512'
    silentArgs     = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
    ValidExitCodes = @(0, 1000, 1101)
}

Install-ChocolateyPackage @packageArgs
