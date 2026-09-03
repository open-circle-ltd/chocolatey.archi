$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = 'https://www.github.com/archimatetool/archi.io/releases/download/5.10.0/Archi-Win64-Setup-5.10.0.exe'
$checksumPackage = 'dba897f3aa2e1b6c30c48740cd5034e2ec502e86ee933f221b8e9e4253cfcba39c2e452a9b8caafeb0690b2abc58b25d518a0e2a1786079d1a20542e8acd4a22'


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
