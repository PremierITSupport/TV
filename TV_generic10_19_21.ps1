$keyPath = 'Registry::HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Internet Explorer\Main'
if (!(Test-Path $keyPath)) { New-Item $keyPath -Force | Out-Null }
Set-ItemProperty -Path $keyPath -Name "DisableFirstRunCustomize" -Value 1
New-Item -ItemType Directory -Force -Path C:\Temp\TV | Out-Null
[Net.ServicePointManager]::SecurityProtocol = 
  [Net.SecurityProtocolType]::Tls12 -bor `
  [Net.SecurityProtocolType]::Tls11 -bor `
  [Net.SecurityProtocolType]::Tls
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/PremierITSupport/TV/main/TVoptions.tvopt" -OutFile "C:\Temp\TV\TVoptions.tvopt"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/PremierITSupport/TV/main/TV_local_generic.bat" -OutFile "C:\Temp\TV\install.bat"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/PremierITSupport/TV/main/TeamViewer_Host.msi" -OutFile "C:\Temp\TV\TeamViewer_Host.msi"
Start-Process cmd -argument "/c C:\Temp\TV\install.bat"