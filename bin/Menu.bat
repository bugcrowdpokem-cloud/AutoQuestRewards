@echo off
title AUTO QUEST REWARDS Menu
color 07
cls

:: Popup when menu opens
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('If you paid for this, then you were SCAMMED, this is a free software made by PatrickWithKanyeWest on discord.','AUTO QUEST REWARDS','OK','Information')"

:: =========================
:: ASCII Art - AUTO QUEST REWARDS
:: =========================
echo.
echo     :::     :::    ::: ::::::::::: ::::::::        ::::::::  :::    ::: :::::::::: :::::::: :::::::::::      :::::::::  :::::::::: :::       :::     :::     :::::::::  :::::::::  
echo   :+: :+:   :+:    :+:     :+:    :+:    :+:      :+:    :+: :+:    :+: :+:       :+:    :+:    :+:          :+:    :+: :+:        :+:       :+:   :+: :+:   :+:    :+: :+:    :+: 
echo  +:+   +:+  +:+    +:+     +:+    +:+    +:+      +:+    +:+ +:+    +:+ +:+       :+:    :+:    +:+          +:+    +:+ +:+        +:+       +:+  +:+   +:+  +:+    +:+ +:+    +:+ 
echo +#++:++#++: +#+    +:+     +#+    +#+    +:+      +#+    +:+ +#+    +:+ +#++:++#  +#++:++#++    +#+          +#++:++#:  +#++:++#   +#+  +:+  +#+ +#++:++#++: +#++:++#:  +#+    +:+ 
echo +#+     +#+ +#+    +#+     +#+    +#+    +#+      +#+  # +#+ +#+    +#+ +#+              +#+    +#+          +#+    +#+ +#+        +#+ +#+#+ +#+ +#+     +#+ +#+    +#+ +#+    +#+ 
echo #+#     #+# #+#    #+#     #+#    #+#    #+#      #+#   +#+  #+#    #+# #+#       #+#    #+#    #+#          #+#    #+# #+#         #+#+# #+#+#  #+#     #+# #+#    #+# #+#    #+# 
echo ###     ###  ########      ###     ########        ###### ### ########  ########## ########     ###          ###    ### ##########   ###   ###   ###     ### ###    ### #########
echo.

:: =========================
:: Main Menu
:: =========================
:menu

echo =========================
echo        MAIN MENU
echo =========================
echo.
echo 1. Setup
echo 2. Run
echo 3. Exit
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" goto setup
if "%choice%"=="2" goto run
if "%choice%"=="3" exit

echo Invalid choice. Try again.
echo.
goto menu

:: =========================
:: Script Calls
:: =========================
:setup
cls
echo Running Setup...
call setup.bat
pause
cls
goto menu

:run
cls
echo Running, Please wait...
call run.bat
pause
cls
goto menu

