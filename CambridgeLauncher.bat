@echo off
title Cambridge Launcher 0.1.3
goto open

: open
cls
title Cambridge Launcher - Main menu
echo Cambridge Launcher 0.2.0 by Mizu (Rexxt on Github)
echo New Cambridge by MillaBasset (SashLilac on Github)
echo ===========================================================================
echo Please type one of the commands below:
echo ===========================================================================
echo launch - Launch Cambridge
echo setup  - Display setup instructions
echo dl     - Launch the download link manager
echo about  - Shows information about Cambridge and Cambridge Launcher
echo quit   - Quit Cambridge Launcher
echo ===========================================================================

set /p command=do:
if %command% == launch goto gamelaunch
if %command% == setup goto setup
if %command% == dl goto dlmgr
if %command% == about goto about
if %command% == quit exit

: gamelaunch
cls
title Cambridge Launcher - Game session
echo Cambridge Launcher 0.2.0 by Mizu (Rexxt on Github)
echo New Cambridge by MillaBasset (SashLilac on Github)
echo ===========================================================================
echo Please select which copy of Cambridge to use:
echo ===========================================================================
echo og     - Original Cambridge
echo dev    - If you're a developer, separate copy of Cambridge
echo ===========================================================================
echo cancel - Cancel launching Cambridge
echo ===========================================================================
set /p command=do:
if %command% == og cd C:\Cambridge\cambridge-master
if %command% == og cd C:\Cambridge\cambridge-dev
if %command% == cancel goto open
echo Attempted to boot Cambridge...
love .
echo Thanks for playing Cambridge!
pause
goto open

: setup
cls
title Cambridge Launcher - Setup instructions
echo Cambridge Launcher 0.2.0 by Mizu (Rexxt on Github)
echo New Cambridge by MillaBasset (SashLilac on Github)
echo ===========================================================================
echo Setup for Cambridge Launcher
echo ===========================================================================
echo Thanks for installing Cambridge Launcher.
echo This simple launcher is here to make opening the game much easier and faster.
echo ===========================================================================
echo Cambridge Launcher must be set up before starting Cambridge.
echo The setup is fairly simple. Just follow the instructions below.
echo ===========================================================================
echo Before using Cambridge Launcher to launch the game, you must already have installed and extracted Cambridge.
echo If you do not have it, install it from this link: https://github.com/SashLilac/cambridge/archive/master.zip
echo You must also have LÖVE (Love2D) installed and the "love ." command should be working in the command line.
echo If it doesn't work, don't worry. The second part of the setup instructions will help you out with that.
echo ===========================================================================
echo If your Cambridge is installed in "C:\Cambridge\cambridge-master", you can skip this step
echo To set up Cambridge Launcher to load the game, right-click on the .bat file and click edit.
echo You have accessed the Launcher's code. Now look for the ": gamelaunch" section. Replace "C:\Cambridge\cambridge-master" with the filepath for the game folder.
echo ===========================================================================
echo Each Cambridge mod/copy supported should have its own directory (except for: DTET).
echo You can easily replace the directories for each copy using the method above.
echo ===========================================================================
echo The "love ." command doesn't work for you? Do not worry, we got you covered.
echo In the Windows search bar, type "path" and click on "Edit the system environment variables".
echo In the "Advanced" tab, click on "Environment Variables...".
echo Click "New" and type "C:\Program Files\LOVE".
echo When done, hit Enter and then the OK button.
echo ===========================================================================
pause
goto open

: dlmgr
cls
title Cambridge Launcher - Download links
echo Cambridge Launcher 0.2.0 by Mizu (Rexxt on Github)
echo New Cambridge by MillaBasset (SashLilac on Github)
echo ===========================================================================
echo Download Link Manager
echo ===========================================================================
echo Please select a file to download from the list below:
echo ===========================================================================
echo cambridge - Download Cambridge or a mod for the game
echo l2d32     - Download Love2D 32 bits
echo l2d64     - Download Love2D 64 bits
echo ===========================================================================
echo cancel    - Go back to main menu
echo ===========================================================================

set /p command=do:
if %command% == cambridge goto cambridgedl
if %command% == l2d32 start "" https://github.com/love2d/love/releases/download/11.3/love-11.3-win32.exe
if %command% == l2d64 start "" https://github.com/love2d/love/releases/download/11.3/love-11.3-win64.exe
if %command% == cancel goto open
goto open

: cambridgedl
cls
title Cambridge Launcher - Download Cambridge
echo Cambridge Launcher 0.2.0 by Mizu (Rexxt on Github)
echo New Cambridge by MillaBasset (SashLilac on Github)
echo ===========================================================================
echo Download Cambridge
echo ===========================================================================
echo Please select a file to download from the list below:
echo ===========================================================================
echo og        - Download latest original Cambridge version from master branch
echo dtet      - Download "DTET Rotation System Mod" (Requires OG) (Mod in development)
echo ===========================================================================
echo cancel    - Go back to download link manager
echo ===========================================================================

set /p command=do:
if %command% == og start "" https://github.com/SashLilac/cambridge/archive/master.zip
if %command% == dtet start "" https://github.com/Rexxt/cambridge-resources/raw/main/mods/downloads/dtet.zip
if %command% == cancel goto dlmgr
goto dlmgr

: about
cls
title Cambridge Launcher - About
echo Cambridge Launcher 0.2.0 by Mizu (Rexxt on Github)
echo New Cambridge by MillaBasset (SashLilac on Github)
echo ===========================================================================
echo About Cambridge
echo ===========================================================================
echo Old Cambridge (0.1.0 to 0.1.3 and old 0.1.4) by Joe Zeng (Github: joezeng)
echo New Cambridge (new 0.1.4 and up) by MillaBasset (Github: SashLilac)
echo ===========================================================================
echo About Cambridge Launcher
echo ===========================================================================
echo You are running version 0.2.0
echo Cambridge Launcher is actively maintained by Mizu (Github: Rexxt)
echo ===========================================================================
echo Staff
echo ===========================================================================
echo Thanks to the Cambridge Team for reviving Cambridge and actively maintaining it!
echo Big thanks to MillaBasset, Oshisaure, hailey and Mizu for putting time and effort to bring a pleasant stacking experience!
echo Big thanks also to the Tetra Legends Discord server for helping us, especially with playtesting and bug catching!
echo ...and thanks a lot to YOU, the user!
echo ===========================================================================
pause 
goto open