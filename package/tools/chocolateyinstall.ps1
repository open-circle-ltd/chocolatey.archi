$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$urlPackage = 'https://www.archimatetool.com/downloads/archi/4.9.3/Archi-Win64-Setup-4.9.3.exe'
$checksumPackage = '2ed4f0264bc8da2c02e3175d002f05ffb74a5ee14754c7436b7f7259515033735fd298efbb51690cd4cd93fa40a8c4b760a61437f81838712995d904ab63d00a'
$urlPackage64 = 'https://www.archimatetool.com/downloads/archi/4.9.3/Archi-Win64-Setup-4.9.3.exe'
$checksumPackage64 = '2ed4f0264bc8da2c02e3175d002f05ffb74a5ee14754c7436b7f7259515033735fd298efbb51690cd4cd93fa40a8c4b760a61437f81838712995d904ab63d00a'


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
