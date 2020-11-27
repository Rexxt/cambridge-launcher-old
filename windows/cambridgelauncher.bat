@echo off
rem Cambridge Launcher by Mizu (Github: Rexxt)
rem Cambridge by MillaDev (Github: SashLilac), Oshisaure, TPM (Github: joezeng)
title Cambridge Launcher
goto initialize

:initialize
cls
title Initialization
echo Loading settings...
echo NOTE: If files cannot be found, please execute the setup command.
rem Reading file contents into variables
set /p gameOG=<\settings\paths\og.txt
set /p gameMOD=<\settings\paths\mod.txt
set /p gameDEV=<\settings\paths\dev.txt
set /p systemBIT=<\settings\system\bits.txt
echo Loading download links...
set "dlOG=https://github.com/SashLilac/cambridge/archive/master.zip"
set "dlOFFMP=https://github.com/SashLilac/cambridge-modpack/archive/main.zip"
pause

:main
cls
title Cambridge Launcher - Main Menu
call functions\banner.bat
echo Please enter a command.
echo ===========================================================================
echo launch - Launch Cambridge
echo setup  - Set up Cambridge Launcher
echo dl     - Launch the downloads manager
echo about  - Shows information about Cambridge and Cambridge Launcher
echo quit   - Quit Cambridge Launcher
echo ===========================================================================
set /p command=c--

if %command% == launch goto launch
if %command% == setup goto setup
if %command% == dl goto dlmgr
if %command% == about goto about
if %command% == quit exit

:launch
cls
title Cambridge Launcher - Playing...
call functions\banner.bat
echo Please select which copy of Cambridge to use.
echo ===========================================================================
echo og     - Original copy of Cambridge.
echo mod    - Mod-dedicated copy of Cambridge.
echo dev    - Development-dedicated copy of Cambridge.
echo ===========================================================================
echo cancel - Return to the main menu
echo ===========================================================================
set /p copy=f--

if %copy% == og cd %gameOG%
if %copy% == mod cd %gameMOD%
if %copy% == dev cd %gameDEV%
if %copy% == cancel goto main

echo Attempted to boot Cambridge (%copy%)...
if %systemBIT% == 32 dist\win32\love.exe .
if %systemBIT% neq 32 dist\windows\love.exe .
echo Thanks for playing Cambridge!
pause
goto main

:setup
cls
title Cambridge Launcher - Setup
call functions\banner.bat
echo Directories
echo ===========================================================================
echo "cancel" to cancel
echo ===========================================================================
echo Cambridge: og:
set /p dirOG=d--
if %dirOG% == cancel goto main
echo Cambridge: mod:
set /p dirMOD=d--
if %dirMOD% == cancel goto main
echo Cambridge: dev:
set /p dirDEV=d--
if %dirDEV% == cancel goto main
echo ===========================================================================
echo System
echo ===========================================================================
echo "cancel" to cancel
echo ===========================================================================
echo System bits (32/64)
set /p sysBITS=n--
echo ===========================================================================
echo Applying settings...
echo %dirOG% >> %cd%\settings\paths\og.txt
echo %dirMOD% >> %cd%\settings\paths\mod.txt
echo %dirDEV% >> %cd%\settings\paths\dev.txt
echo %sysBITS% >> %cd%\settings\system\bits.txt
pause
goto main

:dlmgr
cls
title Cambridge Launcher - Downloads
call functions\banner.bat
echo Download Manager
echo ===========================================================================
echo Please select a file to download from the list below.
echo ===========================================================================
echo og        - Download the latest original Cambridge version from master branch
echo offmp     - Download the official modpack from main branch
echo ===========================================================================
echo cancel    - Return to the main menu
echo ===========================================================================

set /p file=f--
if %file% == og start "" %dlOG%
if %file% == offmp start "" %dlOFFMP%
if %file% == cancel goto main
goto main

:about
cls
title Cambridge Launcher - About
call functions\banner.bat
echo ===========================================================================
echo About Cambridge
echo ===========================================================================
echo Old Cambridge (0.1.0 to 0.1.3 and old 0.1.4) by TPM (Github: joezeng)
echo New Cambridge (new 0.1.4 and up) by MillaDev (Github: SashLilac), Oshisaure, TPM (Github: joezeng)
echo ===========================================================================
echo About Cambridge Launcher
echo ===========================================================================
echo The version you have downloaded is version 0.3.0
echo Cambridge Launcher is actively maintained by Mizu (Github: Rexxt)
echo ===========================================================================
echo Staff
echo ===========================================================================
echo Thanks to the Cambridge Team for reviving Cambridge and actively maintaining it!
echo Big thanks to MillaDev, Oshisaure, TPM, Mizu, Hailey, CylinderKnot, MarkGamed7794, MattMayuga, Kitaru, switchpalacecorner, sinefuse, 2Tie, nightmareci, MyPasswordIsWeak and Dr Ocelot for putting time and effort to bring a pleasant stacking experience!
echo Big thanks also to the Tetra Legends Discord server for helping us, especially with playtesting and bug catching!
echo Great thanks to The Absolute Plus Discord for helping us with developing the game!
echo ...and thanks a lot to YOU, the user!
echo ===========================================================================
pause
goto main