$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = 'https://www.archimatetool.com/downloads/archi-5.php?/5.2.0/Archi-Win64-Setup-5.2.0.exe'
$checksumPackage = 'b8bb4409dcbc70a67cb9fefc77226bb8893957ebdc3f9af07219cbf5fdcaa478c2490ca90941c9a789fa3a4d1488561101e247204a35131dc0b22460edddf20f'
$urlPackage64 = 'https://www.archimatetool.com/downloads/archi-5.php?/5.2.0/Archi-Win64-Setup-5.2.0.exe'
$checksumPackage64 = 'b8bb4409dcbc70a67cb9fefc77226bb8893957ebdc3f9af07219cbf5fdcaa478c2490ca90941c9a789fa3a4d1488561101e247204a35131dc0b22460edddf20f'


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
