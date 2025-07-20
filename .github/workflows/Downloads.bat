@echo off
curl -s -L -o setup.py https://gitlab.com/raposabrty/pcrdp/-/raw/main/setup.py
curl -s -L -o AvicaLite_v8.0.8.9.exe "https://download.avica.com/AvicaLite_v8.0.8.9.exe?_gl=1*2w6u98*_gcl_au*MTEwNDQ3OTIwNC4xNzI5Mzg2MzIz"
curl -s -L -o expressvpn_installer.exe "https://www.expressvpn.com/clients/windows/expressvpn_windows_12.100.0.2_release.exe"
curl -s -L -o SpotifySetup.exe "https://download.scdn.co/SpotifySetup.exe"
curl -s -L -o MacroRecorder.exe "https://static.jitbit.com/mr/MacroRecorderSetup.exe"
curl -s -L -o show.bat https://gitlab.com/raposabrty/pcrdp/-/raw/main/show.bat
curl -s -L -o loop.bat https://gitlab.com/chamod12/loop-win10/-/raw/main/loop.bat
curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
python.exe -m pip install --upgrade pip
pip install requests --quiet
pip install pyautogui --quiet
pip install telegraph --quiet

C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin TheDisa1a
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"
expressvpn_installer.exe /install /quiet /norestart
timeout /t 20 >nul
taskkill /IM ExpressVPN.exe /F
start "" "MacroRecorder.exe"
start "" "AvicaLite_v8.0.8.9.exe"
start /wait SpotifySetup.exe /silent
timeout /t 10 >nul
taskkill /IM Spotify.exe /F
python setup.py