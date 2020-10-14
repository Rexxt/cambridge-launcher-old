Cambridge Launcher 0.1.3 by Mizu (Rexxt on Github)
New Cambridge by MillaBasset (SashLilac on Github)
======================================================================================================================================================
Index
======================================================================================================================================================
/Index
/About Cambridge
/About Cambridge Launcher
/Staff
/Setup Instructions
	/Set Cambridge Up
	/Set Love2D Up
	/Modify the launcher if Cambridge is installed to a different path
	/Mods/copies' Default Paths

======================================================================================================================================================
About Cambridge
------------------------------------------------------------------------------------------------------------------------------------------------------
Old Cambridge (0.1.0 to 0.1.3 and old 0.1.4) by Joe Zeng (Github: joezeng)
New Cambridge (new 0.1.4 and up) by MillaBasset (Github: SashLilac)
======================================================================================================================================================
About Cambridge Launcher
------------------------------------------------------------------------------------------------------------------------------------------------------
The version you have downloaded is version 0.2.1
Cambridge Launcher is actively maintained by Mizu (Github: Rexxt)
======================================================================================================================================================

======================================================================================================================================================
Staff
------------------------------------------------------------------------------------------------------------------------------------------------------
Thanks to the Cambridge Team for reviving Cambridge and actively maintaining it!
Big thanks to MillaBasset, Oshisaure, hailey and Mizu for putting time and effort to bring a pleasant stacking experience!
Big thanks also to the Tetra Legends Discord server for helping us, especially with playtesting and bug catching!
...and thanks a lot to YOU, the user!
======================================================================================================================================================

======================================================================================================================================================
Setup Instructions
------------------------------------------------------------------------------------------------------------------------------------------------------
Thanks for installing Cambridge Launcher.
This simple launcher is here to make opening the game much easier and faster.
------------------------------------------------------------------------------------------------------------------------------------------------------
Cambridge Launcher must be set up before starting Cambridge.
The setup is fairly simple. Just follow the instructions below.
======================================================================================================================================================
Set Cambridge Up
------------------------------------------------------------------------------------------------------------------------------------------------------
Open the launcher, type "dl" and press enter. You have arrived to the downloads menu.
Type "cambridge", press enter, type "og" and press enter again. This will make you download Cambridge without any mods.
Open the file and choose to extract it.
If you want the Cambridge Launcher to work without needing to edit it, extract it to "C:\Cambridge".
If you want to install it to a different file path, you'll need to edit the launcher. This will be explained in the last section.
--------------------------------------------------------------------------------------------------------------------------------------------------
Cambridge Launcher 0.2.0 lets you download, install and launch different mods of the game.
Each Cambridge mod/copy supported should have its own directory (except for: DTET).
You can easily replace the directories for each copy using the method below.
======================================================================================================================================================
Set Love2D Up
------------------------------------------------------------------------------------------------------------------------------------------------------
Cambridge needs Love2D to be installed in order to work. Love2D aka LÖVE is a game engine that allows you to make games with Lua.
There are 2 ways to download Love2D:
------------------------------------------------------------------------------------------------------------------------------------------------------
To download Love2D from the launcher, execute it. Then, type "dl" and press enter. You have arrived to the downloads menu.
Type "l2d" followed by the number of bits your system uses. If it's a 64 bits system, type "64". If it's a 32 bits system, type "32".
Once downloaded to your preferred location, install it.
------------------------------------------------------------------------------------------------------------------------------------------------------
Go to "https://love2d.org/" and select which version to download. It is recommended that you use the installer.
Once downloaded to your preferred location, install it.
------------------------------------------------------------------------------------------------------------------------------------------------------
Once you've installed Love2D using one of the methods above, open the launcher, type "launch" and press enter. If the game launches, this means Love2D is set up and Cambridge Launcher can launch the game. If "love" isn't recognized as a command, follow these steps:
------------------------------------------------------------------------------------------------------------------------------------------------------
In the Windows search bar, type "path" and click on "Edit the system environment variables".
In the "Advanced" tab, click on "Environment Variables...".
Click "New" and type "C:\Program Files\LOVE".
When done, hit Enter and then the OK button.
Now try relaunching the game. It should work now!
======================================================================================================================================================
Modify the launcher if Cambridge is installed to a different path
------------------------------------------------------------------------------------------------------------------------------------------------------
If your Cambridge is installed in "~/cambridge/master", you can skip this step
To set up Cambridge Launcher to load the game, right-click on the .sh file and click edit.
You have accessed the Launcher's code. Now look for the "launch" function. 
Replace "~/cambridge/master" with the filepath for the game folder.
======================================================================================================================================================
Mods/copies' Default Paths
------------------------------------------------------------------------------------------------------------------------------------------------------
Each mod/copy has a default file path in the launcher's code. You can use the same method shown above to edit the file path
------------------------------------------------------------------------------------------------------------------------------------------------------
Cambridge (og) and all ruleset mods installed in og: ~/cambridge/master
Development copy: ~/cambridge/dev