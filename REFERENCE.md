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
* [accessDialog.js](#accessdialogjs)
* [altTab.js](#alttabjs): The popup that appears when you press `ALT + Tab`
* [animation.js](#animationjs)
* [appDisplay.js](#appdisplayjs): This is the selector of all apps when you click `Applications` in the [viewSelector](#viewselectorjs)
* [appFavorites.js](#appfavoritesjs): Manages app favourites in the dash
* [audioDeviceSelection.js](#audiodeviceselectionjs)
* [background.js](#backgroundjs)
* [backgroundMenu.js](#backgroundmenujs)
* [boxpointer.js](#boxpointerjs): Whenever you open a popup menu there's a little arrow connecting the button to the menu. That's what this is.
* [calendar.js](#calendarjs): Stuff to do with the calendar in the clock dropdown menu
* [checkBox.js](#checkboxjs):
* [ctrlAltTab.js](#ctrlalttabjs): Handles the Accessibility switcher which lets you select UI elements 
* [dash.js](#dashjs): This is the bar that you have at the left in overview
* [dateMenu.js](#datemenujs): The graphical calendar widget in the calendar menu
* [dnd.js](#dndjs): Handles drag and drop
* [edgeDragAction.js](#edgedragactionjs)
* [endSessionDialog.js](#endsessiondialogjs): The dialog that appears when you log out/shutdown/etc
* [environment.js](#environmentjs): Sets upd the GJS environment for the rest of the code
* [extensionDownloader.js](#extensiondownloaderjs): Handles installing, uninstalling, downloading, and updating extensions
* [extensionSystem.js](#extensionsystemjs): Handles installing, enabling, and disabling extensions
* [focusCaretTracker.js](#focuscarettrackerjs)
* [grabHelper.js](#grabhelperjs)
* [ibusCandidatePopup.js](#ibuscandidatepopupjs)
* [iconGrid.js](#icongridjs): Classes for layout out icons in a grid
* [keyboard.js](#keyboardjs): On-screen keyboard class
* [layout.js](#layoutjs): This manages the shell `chrome`; the UI that is visible in the normal mode, that surrounds the main workspace content
* [legacyTray.js](#legacytrayjs)
* [lightbox.js](#lightboxjs): Creates a dark translucent shade convering a UI element
* [lookingGlass.js](#lookingglassjs): The looking glass `ALT + F2` + `lg + ENTER`. It is a tool for helo developers developing GNOME Shell and GNOME Shell extensions
* [magnifierDBus.js](#magnifierdbusjs): Shell magnifier for accessibility and the DBus interface.
* [magnifier.js](#magnifierjs): It is a accessibility tool, that allow to deficient users to see the desktop with zoom
* [main.js](#mainjs): This is what defines most of the global object instances in GNOME Shell and sets everything up
* [messageList.js](#messagelistjs)
* [messageTray.js](#messagetrayjs): The instance of the message tray
* [modalDialog.js](#modaldialogjs): Defines the GNOME Shell popup dialogs log out/shutdown/authentication/etc
* [mpris.js](#mprisjs)
* [notificationDaemon.js](#notificationdaemonjs): Listens for notifications via DBus and adds them to the message tray
* [osdMonitorLabeler.js](#osdmonitorlabelerjs)
* [osdWindow.js](#osdwindowjs)
* [overviewControls.js](#overviewcontrolsjs)
* [overview.js](#overviewjs): The overview `Super Key`. This object have all we see normally when we are in the `Activities` headland. So, it has the dash, the workspaces, the window actors, the search bar, the display apps, etc
* [padOsd.js](#padosdjs)
* [panel.js](#paneljs): Defines the top panel
* [panelMenu.js](#panelmenujs): Defines various helper functions for items in the panel
* [pointerWatcher.js](#pointerwatcherjs)
* [popupMenu.js](#popupmenujs): Defines the popup menus and items that can go in them
* [remoteMenu.js](#remotemenujs)
* [remoteSearch.js](#remotesearchjs): Handles remote search providers that operate through DBus
* [runDialog.js](#rundialogjs): The run dialog/command prompt `ALT + F2`
* [screencast.js](#screencastjs)
* [screenShield.js](#screenshieldjs)
* [screenshot.js](#screenshotjs)
* [scripting.js](#scriptingjs)
* [search.js](#searchjs): Abstract class that handle searching and providing results
* [separator.js](#separatorjs)
* [sessionMode.js](#sessionmodejs)
* [shellDBus.js](#shelldbusjs): GNOME Shell DBus implementation (interface name `org.gnome.shell`, path `/org/gnome/Shell`js) for installing/enabling/disabling/uninstalling extensions and requesting information from them, taking screenshots, and so on
* [shellEntry.js](#shellentryjs): Adds context menus to entry widgets with 'copy' and 'paste' and if it is a password widget 'show'/'hide text'
* [shellMountOperation.js](#shellmountoperationjs): Wrappers around Shell.MountOperation that handle the ejecting of a device from the [autorunManager.AutorunNotification](#autorunmanagerjs). Provides a dialog letting you know if the device is busy/what processes are inhibiting unmounting and notifications if passwords are needed for the volume.
* [slider.js](#sliderjs)
* [switcherPopup.js](#switcherpopupjs)
* [tweener.js](#tweenerjs): A module that wraps around `imports.tweener.tweener` adding extra goodness for GNOME Shell
* [unlockDialog.js](#unlockdialogjs)
* [userWidget.js](#userwidgetjs)
* [viewSelector.js](#viewselectorjs): This is the selector for `Windows` and `Applications` tabs
* [windowAttentionHandler.js](#windowattentionhandlerjs): Manage the `x is ready` dialog you got when you click to run some application and other things like this. It defines when a window is requesting attention from the user
* [windowManager.js](#windowmanagerjs): Extra bells and whistles for the window manager implemented on the JS side
* [windowMenu.js](#windowmenujs)
* [workspace.js](#workspacejs): Classes handling the window previews you see in overview
* [workspacesView.js](#workspacesviewjs): Handles assembling the window previews from `workspace.js` and the workspaces sidebar `workspaceThumbnail.js`
* [workspaceSwitcherPopup.js](#workspaceswitcherpopupjs): The popup you get upon switching workspaces through the keybindings that shows you which workspaces you are switching to
* [workspaceThumbnail.js](#workspacethumbnailjs): Defines the classes in the workspace sidebar in overview
* [xdndHandler.js](#xdndhandlerjs): GNOME Shell handling of Xdnd: dragging and dropping things between X window and a GNOME Shell object. 
* [components](#componentsjs) directory
    * [automountManager.js](#automountmanagerjs): Manages the automount of devices, like when you insert a USB stick and it is mounted automatically.
    * [autorunManager.js](#autorunmanagerjs): Manage the autorun function, like when you insert some device in the computer and a dialog asking what to do shown. 
    * [__init__.js](#initjs)
    * [keyring.js](#keyringjs)
    * [networkAgent.js](#networkagentjs): Manage network interface wifi/wire/bluetooth
    * [polkitAgent.js](#polkitagentjs): Handles popping up a password dialog on receiving authentication requests
    * [telepathyClient.js](#telepathyclientjs): Handles chat through telepathy and setting up notifications etc for these
* [status](#statusjs) directory: This containst the files for all the standard status indicators in the status area
    * [accessibility.js](#accessibilityjs): The accessibility `a11y` indicator
    * [bluetooth.js](#bluetoothjs): The bluetooth indicator
    * [brightness.js](#brightnessjs): The brightness indicator
    * [keyboard.js](#keyboardjs): Keyboard layout indicator
    * [location.js](#locationjs)
    * [network.js](#networkjs): The network wifi/wired indicator
    * [power.js](#powerjs): The power battery life/power settings indicator
    * [rfkill.js](#rfkilljs)
    * [screencast.js](#screencastjs)
    * [system.js](#systemjs)
    * [volume.js](#volumejs): The volumen/sound settings indicator

#Files `imports.misc`
* [extensionUtils.js](#extensionutilsjs): Set of utilities to do with extensions
* [fileUtils.js](#fileutilsjs): Set of helpful functions for files
* [gnomeSession.js](#gnomesessionjs): DBus stuff to do with `org.gnome.SessionManager`
* [history.js](#historyjs): A class that saves history to a gsettings key
* [ibusManager.js](#ibusmanagerjs)
* [jsParse.js](#jsparsejs): A set of functions for parsing strings of javascript code, used in the autocomplete function for the looking class
* [keyboardManager.js](#keyboardmanagerjs)
* [loginManager.js](#loginmanagerjs)
* [modemManager.js](#modemmanagerjs): DBus stuff to do with mobile brandband
* [objectManager.js](#objectmanagerjs)
* [params.js](#paramsjs): A helpful function for parsing input parameters against default parameters
* [smartcardManager.js](#smartcardmanagerjs)
* [util.js](#utiljs): A set of useful functions, mainly to do with spawning external processes in the background


#Overview of classes in each file

## accessDialog.js
test1

## altTab.js
test2

## animation.js
test3

## appDisplay.js
test4