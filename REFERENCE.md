#JS UI REFERENCE
<br>
This is a summary of the UI Files. 

#####Notes
- The actual version of GNOME Shell as of today is 3.22
- This is just a reference list, not full documentation or anything.
- Use this to get a quick ide of what is in what file.
- I might not be correct
- Contributions are welcome

#####Links
- [GNOME Shell UI FIles](https://github.com/GNOME/gnome-shell/tree/master/js/ui)

#Files `imports.ui`
* [accessDialog.js](#accessDialog)
* [altTab.js](#altTab): The popup that appears when you press `ALT + Tab`
* [animation.js](#animation)
* [appDisplay.js](#appDisplay): This is the selector of all apps when you click `Applications` in the [viewSelector](#viewSelector)
* [appFavorites.js](#appFavorites): Manages app favourites in the dash
* [audioDeviceSelection.js](#audioDeviceSelection)
* [background.js](#background)
* [backgroundMenu.js](#backgroundMenu)
* [boxpointer.js](#boxpointer): Whenever you open a popup menu there's a little arrow connecting the button to the menu. That's what this is.
* [calendar.js](#calendar): Stuff to do with the calendar in the clock dropdown menu
* [checkBox.js](#checkBox):
* [ctrlAltTab.js](#ctrlAltTab): Handles the Accessibility switcher which lets you select UI elements 
* [dash.js](#dash): This is the bar that you have at the left in overview
* [dateMenu.js](#dateMenu): The graphical calendar widget in the calendar menu
* [dnd.js](#dnd): Handles drag and drop
* [edgeDragAction.js](#edgeDragAction)
* [endSessionDialog.js](#endSessionDialog): The dialog that appears when you log out/shutdown/etc
* [environment.js](#environment): Sets upd the GJS environment for the rest of the code
* [extensionDownloader.js](#extensionDownloader): Handles installing, uninstalling, downloading, and updating extensions
* [extensionSystem.js](#extensionSystem): Handles installing, enabling, and disabling extensions
* [focusCaretTracker.js](#focusCaretTracker)
* [grabHelper.js](#grabHelper)
* [ibusCandidatePopup.js](#ibusCandidatePopup)
* [iconGrid.js](#iconGrid): Classes for layout out icons in a grid
* [keyboard.js](#keyboard): On-screen keyboard class
* [layout.js](#layout): This manages the shell `chrome`; the UI that is visible in the normal mode, that surrounds the main workspace content
* [legacyTray.js](#legacyTray)
* [lightbox.js](#lightbox): Creates a dark translucent shade convering a UI element
* [lookingGlass.js](#lookingGlass): The looking glass `ALT + F2` + `lg + ENTER`. It is a tool for helo developers developing GNOME Shell and GNOME Shell extensions
* [magnifierDBus.js](#magnifierDBus): Shell magnifier for accessibility and the DBus interface.
* [magnifier.js](#magnifier): It is a accessibility tool, that allow to deficient users to see the desktop with zoom
* [main.js](#main): This is what defines most of the global object instances in GNOME Shell and sets everything up
* [messageList.js](#messageList)
* [messageTray.js](#messageTray): The instance of the message tray
* [modalDialog.js](#modalDialog): Defines the GNOME Shell popup dialogs log out/shutdown/authentication/etc
* [mpris.js](#mpris)
* [notificationDaemon.js](#notificationDaemon): Listens for notifications via DBus and adds them to the message tray
* [osdMonitorLabeler.js](#osdMonitorLabeler)
* [osdWindow.js](#osdWindow)
* [overviewControls.js](#overviewControls)
* [overview.js](#overview): The overview `Super Key`. This object have all we see normally when we are in the `Activities` headland. So, it has the dash, the workspaces, the window actors, the search bar, the display apps, etc
* [padOsd.js](#padOsd)
* [panel.js](#panel): Defines the top panel
* [panelMenu.js](#panelMenu): Defines various helper functions for items in the panel
* [pointerWatcher.js](#pointerWatcher)
* [popupMenu.js](#popupMenu): Defines the popup menus and items that can go in them
* [remoteMenu.js](#remoteMenu)
* [remoteSearch.js](#remoteSearch): Handles remote search providers that operate through DBus
* [runDialog.js](#runDialog): The run dialog/command prompt `ALT + F2`
* [screencast.js](#screencast)
* [screenShield.js](#screenShield)
* [screenshot.js](#screenshot)
* [scripting.js](#scripting)
* [search.js](#search): Abstract class that handle searching and providing results
* [separator.js](#separator)
* [sessionMode.js](#sessionMode)
* [shellDBus.js](#shellDBus): GNOME Shell DBus implementation (interface name `org.gnome.shell`, path `/org/gnome/Shell`) for installing/enabling/disabling/uninstalling extensions and requesting information from them, taking screenshots, and so on
* [shellEntry.js](#shellEntry): Adds context menus to entry widgets with 'copy' and 'paste' and if it is a password widget 'show'/'hide text'
* [shellMountOperation.js](#shellMountOperation): Wrappers around Shell.MountOperation that handle the ejecting of a device from the [autorunManager.AutorunNotification](#autorunManager). Provides a dialog letting you know if the device is busy/what processes are inhibiting unmounting and notifications if passwords are needed for the volume.
* [slider.js](#slider)
* [switcherPopup.js](#switcherPopup)
* [tweener.js](#tweener): A module that wraps around `imports.tweener.tweener` adding extra goodness for GNOME Shell
* [unlockDialog.js](#unlockDialog)
* [userWidget.js](#userWidget)
* [viewSelector.js](#viewSelector): This is the selector for `Windows` and `Applications` tabs
* [windowAttentionHandler.js](#windowAttentionHandler): Manage the `x is ready` dialog you got when you click to run some application and other things like this. It defines when a window is requesting attention from the user
* [windowManager.js](#windowManager): Extra bells and whistles for the window manager implemented on the JS side
* [windowMenu.js](#windowMenu)
* [workspace.js](#workspace): Classes handling the window previews you see in overview
* [workspacesView.js](#workspacesView): Handles assembling the window previews from `workspace.js` and the workspaces sidebar `workspaceThumbnail.js`
* [workspaceSwitcherPopup.js](#workspaceSwitcherPopup): The popup you get upon switching workspaces through the keybindings that shows you which workspaces you are switching to
* [workspaceThumbnail.js](#workspaceThumbnail): Defines the classes in the workspace sidebar in overview
* [xdndHandler.js](#xdndHandler): GNOME Shell handling of Xdnd: dragging and dropping things between X window and a GNOME Shell object. 
* [components](#components) directory
    * [automountManager.js](#automountManager): Manages the automount of devices, like when you insert a USB stick and it is mounted automatically.
    * [autorunManager.js](#autorunManager): Manage the autorun function, like when you insert some device in the computer and a dialog asking what to do shown. 
    * [__init__.js](#init)
    * [keyring.js](#keyring)
    * [networkAgent.js](#networkAgent): Manage network interface wifi/wire/bluetooth
    * [polkitAgent.js](#polkitAgent): Handles popping up a password dialog on receiving authentication requests
    * [telepathyClient.js](#telepathyClient): Handles chat through telepathy and setting up notifications etc for these
* [status](#status) directory: This containst the files for all the standard status indicators in the status area
    * [accessibility.js](#accessibility): The accessibility `a11y` indicator
    * [bluetooth.js](#bluetooth): The bluetooth indicator
    * [brightness.js](#brightness): The brightness indicator
    * [keyboard.js](#keyboard): Keyboard layout indicator
    * [location.js](#location)
    * [network.js](#network): The network wifi/wired indicator
    * [power.js](#power): The power battery life/power settings indicator
    * [rfkill.js](#rfkill)
    * [screencast.js](#screencast)
    * [system.js](#system)
    * [volume.js](#volume): The volumen/sound settings indicator

