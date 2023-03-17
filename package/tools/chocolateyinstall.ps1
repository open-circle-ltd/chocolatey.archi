$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = 'https://www.archimatetool.com/downloads/archi.php?/5.0.1/Archi-Win64-Setup-5.0.1.exe'
$checksumPackage = 'e9bce0834e506b1c7257f68c8f4ee608ca303ef68f6f358b0b10016e9e1f0a67575651d1b5e6e6208749b7fdb867164b54a1d3aa7f4d3a826cce7edf82941cfb'
$urlPackage64 = 'https://www.archimatetool.com/downloads/archi.php?/5.0.1/Archi-Win64-Setup-5.0.1.exe'
$checksumPackage64 = 'e9bce0834e506b1c7257f68c8f4ee608ca303ef68f6f358b0b10016e9e1f0a67575651d1b5e6e6208749b7fdb867164b54a1d3aa7f4d3a826cce7edf82941cfb'


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
