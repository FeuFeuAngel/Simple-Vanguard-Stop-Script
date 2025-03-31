sc stop vgk
sc config "vgc" start= disabled
tasklist | find /i "vgtray.exe" && taskkill /im vgtray.exe /F

sc config "vgk" start= disabled

reg import "%~dp0\RegVGTrayOff.reg"

pause