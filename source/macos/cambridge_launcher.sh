#!/bin/sh

# bash port of this script
# https://github.com/Rexxt/cambridge-launcher/
# Made by MyPasswordIsWeak

# Links here for easy maintenance
CAMOG="https://github.com/SashLilac/cambridge/archive/master.zip"
CAMDTET="https://github.com/Rexxt/cambridge-resources/raw/main/mods/downloads/dtet/dtet-oct-10.zip"
LOVEIMG864="https://github.com/love2d/love/releases/download/11.3/love-11.3-x86_64.AppImage"
LOVEIMG64="https://github.com/love2d/love/releases/download/11.3/love-11.3-i686.AppImage"

# Its a pain to do this every time otherwise
function intro_screen() {
	clear
	title $@
	echo Cambridge Launcher 0.2.0 by Mizu \(Rexxt on Github\)
	echo New Cambridge by MillaBasset \(SashLilac on Github\)
	echo Bash port of launcher by MyPasswordIsWeak
}

function title() {
	echo -en "\033]0;$@\a"
}

function pause() {
	read -p "Press any key to continue..."
}

function launch() {

	intro_screen Cambridge Launcher - Game session
	echo ===========================================================================
	echo Please select which copy of Cambridge to use:
	echo ===========================================================================
	echo og     - Original Cambridge
	echo dev    - If you\'re a developer, separate copy of Cambridge
	echo ===========================================================================
	echo cancel - Cancel launching Cambridge
	echo ===========================================================================
	
	read ACTION

	if [ $ACTION = 'og' ]; then
		mkdir -p ~/cambridge/master
		cd ~/cambridge/master
	fi

	if [ $ACTION = 'dev' ]; then
		mkdir -p ~/cambridge/dev
		cd ~/cambridge/dev
	fi

	if [ $ACTION = 'cancel' ]; then
		return
	fi

	echo Attempted to boot Cambridge...
	love .
	echo Thanks for playing Cambridge!
	pause

}

function setup() {

	intro_screen Cambridge Launcher - Setup instructions
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
	echo Alternativly you can use the \"dl\" option in the main menu
	echo You must also have LÖVE \(Love2D\) installed and the \"love .\" command should be working in the command line.
	echo If it doesn\'t work, don\'t worry. The second part of the setup instructions will help you out with that.
	echo ===========================================================================
	echo If your Cambridge is installed in \"~/cambridge/master\", you can skip this step
	echo To set up Cambridge Launcher to load the game, right-click on the .sh file and click edit.
	echo You have accessed the Launcher\'s code. Now look for the \"launch\" function. 
	echo Replace \"~/cambridge/master\" with the filepath for the game folder.
	echo ===========================================================================
	echo Each Cambridge mod/copy supported should have its own directory \(except for: DTET\).
	echo You can easily replace the directories for each copy using the method above.
	echo ===========================================================================
	echo The \"love .\" command doesn\'t work for you? Do not worry, we got you covered.
	echo If you are not on Ubuntu, download the AppImage from the site and put it on your path
	echo else use the following command:
	echo \"sudo add-apt-repository ppa:bartbes/love-stable && sudo apt-get update && sudo apt-get install love\"
	echo ===========================================================================
	pause

}

function dl() {

	intro_screen Cambridge Launcher - Download links
	echo ===========================================================================
	echo Download Link Manager with curl
	echo ===========================================================================
	echo Please select a file to download from the list below:
	echo ===========================================================================
	echo cambridge - Download Cambridge or a mod for the game
	echo l2dimg864 - Download Love2D AppImage \(x86_64\)
	echo l2dimg64  - Download Love2D AppImage \(i648\)
	echo l2daptppa - Download Love2D and install love2d with apt and ppa
	echo ===========================================================================
	echo cancel    - Go back to main menu
	echo ===========================================================================

	read ACTION

	if [ $ACTION = 'cambridge' ]; then

		intro_screen Cambridge Launcher - Download Cambridge
		echo ===========================================================================
		echo Download Cambridge
		echo ===========================================================================
		echo Please select a file to download from the list below:
		echo ===========================================================================
		echo og        - Download latest original Cambridge version from master branch
		echo dtet      - Download "DTET Rotation System Mod" \(Requires OG\) \(Mod in development\)
		echo ===========================================================================
		echo cancel    - Go back to download link manager
		echo ===========================================================================

		read ACTIONTWO

		if [ $ACTIONTWO = 'og' ]; then

			mkdir -p ~/cambridge/master
			curl -L $CAMOG > ~/cambridge/master/temp.zip
			
			OLD_DIR=$PWD
			cd ~/cambridge/master/
			
			unzip ~/cambridge/master/temp.zip > /dev/null
			mv cambridge-master/* . > /dev/null
			
			rm -rf cambridge-master
			rm temp.zip

			cd "$OLD_DIR"

		fi

		if [ $ACTIONTWO = 'dtet' ]; then
		
			mkdir -p ~/cambridge/master
			curl -L $CAMDTET > ~/cambridge/master/temp.zip

			OLD_DIR=$PWD
			cd ~/cambridge/master/

			unzip ~/cambridge/master/temp.zip > /dev/null

			mv dtet/files/dtet.lua tetris/rulesets/dtet.lua
			mv dtet/files/mode_select.lua scene/mode_select.lua

			rm -rf dtet
			rm temp.zip

			cd "$OLD_DIR"

		fi

		dl

	fi

	if [ $ACTION = 'l2dimg864' ]; then
		curl -L $LOVEIMG864 > `basename $LOVEIMG864` 
	fi

	if [ $ACTION = 'l2dimg64' ]; then
		curl -L $LOVEIMG64 > `basename $LOVEIMG64` 
	fi

	if [ $ACTION = 'l2daptppa' ]; then
		sudo add-apt-repository ppa:bartbes/love-stable && \
			sudo apt-get update && \
			sudo apt-get install love
	fi

}

function about() {

	intro_screen Cambridge Launcher - About
	echo ===========================================================================
	echo About Cambridge
	echo ===========================================================================
	echo Old Cambridge \(0.1.0 to 0.1.3 and old 0.1.4\) by Joe Zeng \(Github: joezeng\)
	echo New Cambridge \(new 0.1.4 and up\) by MillaBasset \(Github: SashLilac\)
	echo ===========================================================================
	echo About Cambridge Launcher
	echo ===========================================================================
	echo You are running version 0.2.0
	echo Cambridge Launcher is actively maintained by Mizu \(Github: Rexxt\)
	echo This bash port was made by MyPasswordIsWeak
	echo ===========================================================================
	echo Staff
	echo ===========================================================================
	echo Thanks to the Cambridge Team for reviving Cambridge and actively maintaining it!
	echo Big thanks to MillaBasset, Oshisaure, hailey and Mizu for putting time and effort to bring a pleasant stacking experience!
	echo Big thanks also to the Tetra Legends Discord server for helping us, especially with playtesting and bug catching!
	echo ...and thanks a lot to YOU, the user!
	echo ===========================================================================
	pause

}

function start() {

	intro_screen Cambridge Launcher - Main menu
	echo ===========================================================================
	echo Please type one of the commands below:
	echo ===========================================================================
	echo launch - Launch Cambridge
	echo setup  - Display setup instructions
	echo dl     - Launch the download link manager
	echo about  - Shows information about Cambridge and Cambridge Launcher
	echo quit   - Quit Cambridge Launcher
	echo ===========================================================================
	
	read ACTION

	if [ $ACTION = 'launch' ]; then
		launch
	fi

	if [ $ACTION = 'setup' ]; then
		setup
	fi

	if [ $ACTION = 'dl' ]; then
		dl
	fi
	
	if [ $ACTION = 'about' ]; then
		about
	fi

	if [ $ACTION = 'quit' ]; then
		exit
	fi

	start

}

start
