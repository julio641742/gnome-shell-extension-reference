#JS UI REFERENCE
<br>
This is a summary of the UI Files. 

#####Notes
- The actual version of GNOME Shell as of today is 3.22
- This is just a reference list, not full documentation or anything.
- Use this to get a quick idea of what is in what file.
- I might not be correct
- Contributions are welcome

#####Links
- [GNOME Shell UI Files](https://github.com/GNOME/gnome-shell/tree/master/js/ui)
- [GNOME Shell Miscellaneous Files](https://github.com/GNOME/gnome-shell/tree/master/js/misc)

#Files `imports.ui`
* [accessDialog.js](#accessDialog.js)
* [altTab.js](#altTab.js): The popup that appears when you press `ALT + Tab`
* [animation.js](#animation.js)
* [appDisplay.js](#appDisplay.js): This is the selector of all apps when you click `Applications` in the [viewSelector](#viewSelector.js)
* [appFavorites.js](#appFavorites.js): Manages app favourites in the dash
* [audioDeviceSelection.js](#audioDeviceSelection.js)
* [background.js](#background.js)
* [backgroundMenu.js](#backgroundMenu.js)
* [boxpointer.js](#boxpointer.js): Whenever you open a popup menu there's a little arrow connecting the button to the menu. That's what this is.
* [calendar.js](#calendar.js): Stuff to do with the calendar in the clock dropdown menu
* [checkBox.js](#checkBox.js):
* [ctrlAltTab.js](#ctrlAltTab.js): Handles the Accessibility switcher which lets you select UI elements 
* [dash.js](#dash.js): This is the bar that you have at the left in overview
* [dateMenu.js](#dateMenu.js): The graphical calendar widget in the calendar menu
* [dnd.js](#dnd.js): Handles drag and drop
* [edgeDragAction.js](#edgeDragAction.js)
* [endSessionDialog.js](#endSessionDialog.js): The dialog that appears when you log out/shutdown/etc
* [environment.js](#environment.js): Sets upd the GJS environment for the rest of the code
* [extensionDownloader.js](#extensionDownloader.js): Handles installing, uninstalling, downloading, and updating extensions
* [extensionSystem.js](#extensionSystem.js): Handles installing, enabling, and disabling extensions
* [focusCaretTracker.js](#focusCaretTracker.js)
* [grabHelper.js](#grabHelper.js)
* [ibusCandidatePopup.js](#ibusCandidatePopup.js)
* [iconGrid.js](#iconGrid.js): Classes for layout out icons in a grid
* [keyboard.js](#keyboard.js): On-screen keyboard class
* [layout.js](#layout.js): This manages the shell `chrome`; the UI that is visible in the normal mode, that surrounds the main workspace content
* [legacyTray.js](#legacyTray.js)
* [lightbox.js](#lightbox.js): Creates a dark translucent shade convering a UI element
* [lookingGlass.js](#lookingGlass.js): The looking glass `ALT + F2` + `lg + ENTER`. It is a tool for helo developers developing GNOME Shell and GNOME Shell extensions
* [magnifierDBus.js](#magnifierDBus.js): Shell magnifier for accessibility and the DBus interface.
* [magnifier.js](#magnifier.js): It is a accessibility tool, that allow to deficient users to see the desktop with zoom
* [main.js](#main.js): This is what defines most of the global object instances in GNOME Shell and sets everything up
* [messageList.js](#messageList.js)
* [messageTray.js](#messageTray.js): The instance of the message tray
* [modalDialog.js](#modalDialog.js): Defines the GNOME Shell popup dialogs log out/shutdown/authentication/etc
* [mpris.js](#mpris.js)
* [notificationDaemon.js](#notificationDaemon.js): Listens for notifications via DBus and adds them to the message tray
* [osdMonitorLabeler.js](#osdMonitorLabeler.js)
* [osdWindow.js](#osdWindow.js)
* [overviewControls.js](#overviewControls.js)
* [overview.js](#overview.js): The overview `Super Key`. This object have all we see normally when we are in the `Activities` headland. So, it has the dash, the workspaces, the window actors, the search bar, the display apps, etc
* [padOsd.js](#padOsd.js)
* [panel.js](#panel.js): Defines the top panel
* [panelMenu.js](#panelMenu.js): Defines various helper functions for items in the panel
* [pointerWatcher.js](#pointerWatcher.js)
* [popupMenu.js](#popupMenu.js): Defines the popup menus and items that can go in them
* [remoteMenu.js](#remoteMenu.js)
* [remoteSearch.js](#remoteSearch.js): Handles remote search providers that operate through DBus
* [runDialog.js](#runDialog.js): The run dialog/command prompt `ALT + F2`
* [screencast.js](#screencast.js)
* [screenShield.js](#screenShield.js)
* [screenshot.js](#screenshot.js)
* [scripting.js](#scripting.js)
* [search.js](#search.js): Abstract class that handle searching and providing results
* [separator.js](#separator.js)
* [sessionMode.js](#sessionMode.js)
* [shellDBus.js](#shellDBus.js): GNOME Shell DBus implementation (interface name `org.gnome.shell`, path `/org/gnome/Shell`.js) for installing/enabling/disabling/uninstalling extensions and requesting information from them, taking screenshots, and so on
* [shellEntry.js](#shellEntry.js): Adds context menus to entry widgets with 'copy' and 'paste' and if it is a password widget 'show'/'hide text'
* [shellMountOperation.js](#shellMountOperation.js): Wrappers around Shell.MountOperation that handle the ejecting of a device from the [autorunManager.AutorunNotification](#autorunManager.js). Provides a dialog letting you know if the device is busy/what processes are inhibiting unmounting and notifications if passwords are needed for the volume.
* [slider.js](#slider.js)
* [switcherPopup.js](#switcherPopup.js)
* [tweener.js](#tweener.js): A module that wraps around `imports.tweener.tweener` adding extra goodness for GNOME Shell
* [unlockDialog.js](#unlockDialog.js)
* [userWidget.js](#userWidget.js)
* [viewSelector.js](#viewSelector.js): This is the selector for `Windows` and `Applications` tabs
* [windowAttentionHandler.js](#windowAttentionHandler.js): Manage the `x is ready` dialog you got when you click to run some application and other things like this. It defines when a window is requesting attention from the user
* [windowManager.js](#windowManager.js): Extra bells and whistles for the window manager implemented on the JS side
* [windowMenu.js](#windowMenu.js)
* [workspace.js](#workspace.js): Classes handling the window previews you see in overview
* [workspacesView.js](#workspacesView.js): Handles assembling the window previews from `workspace.js` and the workspaces sidebar `workspaceThumbnail.js`
* [workspaceSwitcherPopup.js](#workspaceSwitcherPopup.js): The popup you get upon switching workspaces through the keybindings that shows you which workspaces you are switching to
* [workspaceThumbnail.js](#workspaceThumbnail.js): Defines the classes in the workspace sidebar in overview
* [xdndHandler.js](#xdndHandler.js): GNOME Shell handling of Xdnd: dragging and dropping things between X window and a GNOME Shell object. 
* [components](#components.js) directory
    * [automountManager.js](#automountManager.js): Manages the automount of devices, like when you insert a USB stick and it is mounted automatically.
    * [autorunManager.js](#autorunManager.js): Manage the autorun function, like when you insert some device in the computer and a dialog asking what to do shown. 
    * [__init__.js](#init.js)
    * [keyring.js](#keyring.js)
    * [networkAgent.js](#networkAgent.js): Manage network interface wifi/wire/bluetooth
    * [polkitAgent.js](#polkitAgent.js): Handles popping up a password dialog on receiving authentication requests
    * [telepathyClient.js](#telepathyClient.js): Handles chat through telepathy and setting up notifications etc for these
* [status](#status.js) directory: This containst the files for all the standard status indicators in the status area
    * [accessibility.js](#accessibility.js): The accessibility `a11y` indicator
    * [bluetooth.js](#bluetooth.js): The bluetooth indicator
    * [brightness.js](#brightness.js): The brightness indicator
    * [keyboard.js](#keyboard.js): Keyboard layout indicator
    * [location.js](#location.js)
    * [network.js](#network.js): The network wifi/wired indicator
    * [power.js](#power.js): The power battery life/power settings indicator
    * [rfkill.js](#rfkill.js)
    * [screencast.js](#screencast.js)
    * [system.js](#system.js)
    * [volume.js](#volume.js): The volumen/sound settings indicator

#Files `imports.misc`
* [extensionUtils.js](#extensionUtils.js): Set of utilities to do with extensions
* [fileUtils.js](#fileUtils.js): Set of helpful functions for files
* [gnomeSession.js](#gnomeSession.js): DBus stuff to do with `org.gnome.SessionManager`
* [history.js](#history.js): A class that saves history to a gsettings key
* [ibusManager.js](#ibusManager.js)
* [jsParse.js](#jsParse.js): A set of functions for parsing strings of javascript code, used in the autocomplete function for the looking class
* [keyboardManager.js](#keyboardManager.js)
* [loginManager.js](#loginManager.js)
* [modemManager.js](#modemManager.js): DBus stuff to do with mobile brandband
* [objectManager.js](#objectManager.js)
* [params.js](#params.js): A helpful function for parsing input parameters against default parameters
* [smartcardManager.js](#smartcardManager.js)
* [util.js](#util.js): A set of useful functions, mainly to do with spawning external processes in the background


#Overview of classes in each file

## accessDialog.js
test1

## altTab.js
test2

## animation.js
test3

## appDisplay.js
test4