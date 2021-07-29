New-Item -ItemType Directory -Force -Path C:\Temp\TV | Out-Null
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/PremierITSupport/TV/main/TVoptions.tvopt" -OutFile "C:\Temp\TV\TVoptions.tvopt"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/PremierITSupport/TV/main/WR_local_install2.bat" -OutFile "C:\Temp\TV\WR_local_install2.bat"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/PremierITSupport/TV/main/TeamViewer_Host.msi" -OutFile "C:\Temp\TV\TeamViewer_Host.msi"
Start-Process cmd -argument "/c C:\Temp\TV\WR_local_install2.bat"