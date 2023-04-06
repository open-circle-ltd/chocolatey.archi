$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = 'https://www.archimatetool.com/downloads/archi.php?/5.0.2/Archi-Win64-Setup-5.0.2.exe'
$checksumPackage = 'eb32db556d32563993ccf06a51541c5a98f720238f3efb538fe5a4cd4c98e727b774fa7e373a41aed64e883d33158c67ecee1765030a08e9b254448ae2d4b207'
$urlPackage64 = 'https://www.archimatetool.com/downloads/archi.php?/5.0.2/Archi-Win64-Setup-5.0.2.exe'
$checksumPackage64 = 'eb32db556d32563993ccf06a51541c5a98f720238f3efb538fe5a4cd4c98e727b774fa7e373a41aed64e883d33158c67ecee1765030a08e9b254448ae2d4b207'


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
