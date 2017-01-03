#GNOME Shell Javascript Source Reference
<br>
Documentation for the Javascript files that make up GNOME Shell's Javascript side

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
* [ctrlAltTab.js](#ctrlalttabjs): Handles the Accessibility switcher which lets you select UI elements. It appears when you press `CTRL + ALT + Tab`
* [dash.js](#dashjs): This is the bar that you have at the left in overview
* [dateMenu.js](#datemenujs): The graphical calendar widget in the calendar menu
* [dnd.js](#dndjs): Handles drag and drop
* [edgeDragAction.js](#edgedragactionjs)
* [endSessionDialog.js](#endsessiondialogjs): The dialog that appears when you `log out/shutdown/etc`
* [environment.js](#environmentjs): Sets upd the GJS environment for the rest of the code
* [extensionDownloader.js](#extensiondownloaderjs): Handles `installing, uninstalling, downloading, and updating` extensions
* [extensionSystem.js](#extensionsystemjs): Handles `installing, enabling, and disabling` extensions
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
* [modalDialog.js](#modaldialogjs): Defines the GNOME Shell popup dialogs `log out/shutdown/authentication/etc`
* [mpris.js](#mprisjs)
* [notificationDaemon.js](#notificationdaemonjs): Listens for notifications via DBus and adds them to the message tray
* [osdMonitorLabeler.js](#osdmonitorlabelerjs)
* [osdWindow.js](#osdwindowjs)
* [overviewControls.js](#overviewcontrolsjs)
* [overview.js](#overviewjs): The overview `Super Key`. This object have all we see normally when we are in the `Activities` headland. So, it has the dash, the workspaces, the window actors, the search bar, the display apps, etc
* [padOsd.js](#padosdjs)
* [panel.js](#paneljs): Defines the `Top Panel`
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
* [shellDBus.js](#shelldbusjs): GNOME Shell DBus implementation (interface name `org.gnome.shell`, path `/org/gnome/Shell`js) for `installing/enabling/disabling/uninstalling` extensions and requesting information from them, taking screenshots, and so on
* [shellEntry.js](#shellentryjs): Adds context menus to entry widgets with 'copy' and 'paste' and if it is a password widget `show/hide text`
* [shellMountOperation.js](#shellmountoperationjs): Wrappers around `Shell.MountOperation` that handle the ejecting of a device from the [autorunManager.AutorunNotification](#autorunmanagerjs). Provides a dialog letting you know if the device is busy/what processes are inhibiting unmounting and notifications if passwords are needed for the volume.
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
* [components](#components) directory
    * [automountManager.js](#automountmanagerjs): Manages the automount of devices, like when you insert a USB stick and it is mounted automatically.
    * [autorunManager.js](#autorunmanagerjs): Manage the autorun function, like when you insert some device in the computer and a dialog asking what to do shown. 
    * [__init__.js](#initjs)
    * [keyring.js](#keyringjs)
    * [networkAgent.js](#networkagentjs): Manage network interface `wifi/wire/bluetooth`
    * [polkitAgent.js](#polkitagentjs): Handles popping up a password dialog on receiving authentication requests
    * [telepathyClient.js](#telepathyclientjs): Handles chat through telepathy and setting up notifications etc for these
* [status](#status-indicators) directory: This contains the files for all the standard status indicators in the `Status Area`
    * [accessibility.js](#accessibilityjs): The accessibility `a11y` indicator
    * [bluetooth.js](#bluetoothjs): The bluetooth indicator
    * [brightness.js](#brightnessjs): The brightness indicator
    * [keyboard.js](#keyboardjs): Keyboard layout indicator
    * [location.js](#locationjs)
    * [network.js](#networkjs): The network `wifi/wired` indicator
    * [power.js](#powerjs): The power `battery life/power settings` indicator
    * [rfkill.js](#rfkilljs)
    * [screencast.js](#screencastjs)
    * [system.js](#systemjs)
    * [volume.js](#volumejs): The `volumen/sound` settings indicator

#Files `imports.misc`
* [config.js](#configjs): A collection of constants that could come in handy (number versions)
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
- AccessDialog:
- AccessDialogDBus:

## altTab.js
![altTab.js](https://raw.githubusercontent.com/julio641742/gnome-shell-extension-reference/master/media/alttab.png)
- AppSwitcherPopup: 
- CyclerHighlight: 
- CyclerPopup: 
- GroupCyclerPopup: 
- WindowSwitcherPopup: 
- WindowCyclerPopup: 
- AppIcon: Class defining the icon for an app
- AppSwitcher: This handles the display of icons for each app in the `AltTab` popup. Generates an `AppIcon` per app
- ThumbnailList: This is what appears when you hover over an app with multiple windows in the `AltTab` popup. It handles the list of thumbnails for a given app
- WindowIcon: 
- WindowList: 

## animation.js
- Animation: 
- AnimatedIcon: 

## appDisplay.js
![appDisplay.js](/media/gnome-shell-overlay-mode-applications.png)
- BaseAppView: 
- PageIndicatorsActor: 
- PageIndicators: 
- AllView: 
- FrequentView: 
- ViewStackLayout: 
- AppDisplay: 
- AppSearchProvider: Handles finding apps matching search item(s)
- FolderView: 
- FolderIcon: 
- AppFolderPopup: 
- AppIcon: An icon for an app
- AppIconMenu: The `right-click` menu of an App containing the relevant actions `New Window/Remove from favourites/Add to favourites/etc`

## appFavorites.js
- AppFavorites: Handles your list of app favourites - updates the list when you choose `Add to Favourite`, provides API for you to `add/remove` from your favourites

## audioDeviceSelection.js
- AudioDeviceSelectionDialog: 
- AudioDeviceSelectionDBus: 

## background.js
- BackgroundCache: 
- Background: 
- SystemBackground: 
- BackgroundSource: 
- Animation: 
- BackgroundManager: 

## backgroundMenu.js
- BackgroundMenu: 

## boxpointer.js
![BoxPointer.js](/media/boxpointer.png)
> BoxPointer is the triangle bit

- BoxPointer: The triangle arrow connecting a `[popupMenu](#popupmenujs)` to its source (you can configure what side of the menu the pointer appears).

## calendar.js
![Calendar.js](/media/calendar.png)
- Contains several functions for manipulating date formats, day abbreviations, etc
- CalendarEvent: An event in the calendar
- EmptyEventSource: `Interface for appointments/events`
- DBusEventSource: A calendar event on the DBus
- Calendar: Main Calendar class, handles the UI part of the calendar `month navigation/date/graphical calendar` as well as monitoring events
- EventMessage: 
- NotificationMessage: 
- EventsSection: 
- NotificationSection: 
- Placeholder: 
- CalendarMessageList: Notification section

See also [dateMenu.js](#datemenujs) which ties all these elements together

## checkBox.js
![checkBox.js](/media/checkbox.png)
- CheckBox: Checkbox itself

## ctrlAltTab.js
![ctrlAltTab.js](/media/ctrlalttab.png)
- CtrlAltTabManager: Handles `CTRL + ALT + Tab` behaviour - showing the popup, setting up the stage to be ready for keyboard navigation
- CtrlAltTabPopup: The UI popup itself
- CtrlAltTabSwitcher: UI element holding all the options you `ALT + Tab` between

## dash.js
![dash.js](/media/dash.png)
- DashItemContainer: Helper class - each item in the dash is one of these
- ShowAppsIcon: 
- DragPlaceholderItem: 
- EmptyDropTargetItem: 
- DashActor: 
- Dash: The master `Dash` class, making use of all the other classes

## dateMenu.js
![dash.js](/media/datemenu.png)
> The date menu. Red: DateMenuButton, Green: TodayButton, Yellow: WorldClockSection

- TodayButton: 
- WorldClocksSection: 
- MessagesIndicator: 
- IndicatorPad: 
- FreezableBinLayout: 
- DateMenuButton: Subclass of [PanelMenu.Button](#panelmenujs) to provide the date menu in the middle `Top Panel`.

See also [calendar.js](#calendarjs)

## dnd.js
This allow you to add `drag-and-drop` functionality to your own classes. You use the following functions defined in the file:

- addDragMonitor: You define an object defining the drag behaviour you want, and use `addDragMonitor` to add it. A drag monitor is an object with the key `dragMonitor` whick is a callback for what happens when a drag monitor event occurs 
See [dash.js](#dashjs) and [workspacesView.js](#workspacesviewjs) for examples
- removeDragMonitor: Remove the drag behaviour that you added with `addDragMonitor`
- makeDraggable: This is what makes an item draggable. You call it on an actor and get a draggable actor back out. You have to define some functions in `actor._delegate`'s class in order for this to work: `handleDragOver`, `acceptDrop`, `getDragActor`, `getDragActorSource`
 
- _Draggable: Class defining a basic draggable item, defining how the dragging happens. You do not use this directly, Instead, use `makeDraggable` to make an actor draggable

## edgeDragAction.js
- EdgeDragAction: 

## endSessionDialog.js
![endSessionDialog.js](/media/endsessiondialog-1.png) ![endSessionDialog.js](/media/endsessiondialog-2.png)
- EndSessionDialog: The end session dialog. Handles the UI part. In terms of actually `logging out/shutting down/etc` the dialog simply sends a message to the GNOME `SessionManager` DBus to request a shutdown rather thant doing the shutdown itself

## environment.js
This module sets upd the `GJS` environment for the rest of the JS files:
- Adds up the `global` object to the environment
- Adds the `add` function to `St.BoxLayout`
- Adds the `child_set` function to `St.BoxLayout`, `Clutter.TableLayout`, `Clutter.GridLayout` and `Clutter.BoxLayout`
- Adds/Improevs the `toString()` function
- Adds method `String.format`
- Initialises various things the shell needs to work

## extensionDownloader.js
![extensionDownloader.js](/media/extensiondownloader.png)

This is a collection of functions to do with installing, updating and uninstalling extensions
> The extension UUID is like `extensionname@some.website.com`

- installExtension: Installs an extension by UUID by downloading it form [GNOME Shell Extensions](https://extensions.gnome.org/)
- uninstallExtension: Uninstalls an extension by UUID
- updateExtension: Updates an extension by UUID

- InstallExtensionDialog: The dialog that pops up when you choose to install an extension from [GNOME Shell Extensions](https://extensions.gnome.org/) confirming that you want to install the extension

## extensionSystem.js
This is a collection of functions to do with enabling and disabling extensions, and accessing their metadata
> You can access extensions and their metadata using `imports.misc.extensionUtils.extensions`. Use `imports.misc.extensionUtils.getCurrentExtension()` from withing an extension to get the object for that extension

> The extension UUID is like `extensionname@some.website.com`

- disableExtension: Disables an extension by UUID
- enableExtension: Enables an extension by UUID

## focusCaretTracker.js
- FocusCaretTracker: 

## grabHelper.js
- GrabHelper: 

## ibusCandidatePopup.js
- CandidateArea: 
- CandidatePopup: 

## iconGrid.js
- BaseIcon: A basic icon class consisting of an icon and a label
- IconGrid: A widget displaying its children in a grid allowing you to set a row limit or column limit, and actors that don't fit in will not be painted
- PaginatedIconGrid: 

## keyboard.js
![keyboard.js](/media/keyboard.png)
- Key: A key on the keyboard
- Keyboard: The `Keyboard` class
- KeyboardSource: Inherits from [MessageTray.Source](#messagetrayjs), shows the keyboard in the message tray
- ShellWaylandAdapter: 

## layout.js
- MonitorConstraint: 
- Monitor: 
- LayoutManager: Manages layout of items on the stage `Messsage Tray/Top Panel/Hot Corners` and updates when monitors change
- HotCorner: Hot corners. The `Top Left` hot corner lets you switch to the overview
- PressureBarrier: 

## legacyTray.js
- LegacyTray: 

## lightbox.js
- RadialShaderQuad: 
- Lightbox: A shade obscuring the specific container actor

## lookingGlass.js
![lookingGlass.js](/media/lookingglass-autocomplete.png)
> Autocomplete function in the Looking Glass

![lookingGlass.js](/media/lookingglass-inspector.png)
> Looking Glass Inspector - outlines the actor your mouse is over and lets you pick it

![lookingGlass.js](/media/lookingglass-objinspector.png)
> Looking Glass ObjInspector - inspecting `Main.panel.statusArea.dateMenu`

- AutoComplete: Adds completion behaviour on `Tab/double-Tab` to the Looking Glass like the terminal
- Notebook: The Looking Glass consists of `Inspector/Evaluator/Windows/Extensions`. The notebook is what holds them all
- ObjLink: When you type thing into the Looking Glass console the results are clickable. This class handles those links 
- Result: When you type things into the Looking Glass the results get printed like so: 
> r(result_number) = result

- WindowList: The `Windows` tab of the Looking Glass
- ObjInspector: When you click on a result in the Looking Glass you get a window that shows you more information about that result. Clicking on an object will show some of its properties. This is that class
- RedBorderEffect: When you **pick** an object with the `Inspector`. There is a red border around the selected object. This class handles adding and removing these borders
- Inspector: There is a `picker` icon. When you select it, you can **pick** an object from the stage to examine further. As you move your pointer over particular objects, they get a red border drawn around them. The `Inspector` class handles tracking which object your pointer is over
- Extensions: The `Extensions` tab in the Looking Glass
- LookingGlass: Assembles the whole Looking Glass together. Also privedes the `Evaluator` tab and handles the actual evaluation of commands typed into the console

## magnifierDBus.js
- ShellMagnifier: 
- ShellMagnifierZoomRegion: 

## magnifier.js
![magnifier.js](/media/magnifier.png)
- Magnifier: Defines the shell magnifier
- ZoomRegion: Defines a particular zoom region
- Crosshairs: Defines the crosshairs of the magnifier
- MagShaderEffects: 

## main.js
- RestartMessage: 

## messageList.js
- URLHighlighter: Class to markup URLs in notifications
- ScaleLayout: 
- LabelExpanderLayout: 
- Message: 
- MessageListSection: 

## messageTray.js
![messageTray.js](/media/messagetray.png)
- FocusGrabber: Grab focus to a notification
- NotificationPolicy: 
- NotificationGenericPolicy: 
- NotificationApplicationPolicy: 
- Notification: Base class defining a notification - the UI element. A notification belongs to a `Source` and has a title and text. In banner mode, the notification shows an icont, title, and banner on a single line. If the notification has additional elements in it or the banner doesn't fit on a single line, the notification is expandable. See `messageTray.js` for much more in-depth documentation.
- NotificationBanner: 
- SourceActor: 
- SourceActorWithLabel: 
- Source: Abstract class defining a notifications source. It provides the UI element of the icon + notification counter in the message tray
- MessageTray: The `MessageTray` class
- SystemNotificationSource: Example of a `Source` - for system notifications

If you wish to create notifications, the `MessageTray.Source` is the class you subclass. You need to implement the `createNotificationIcon` function at a minimum. When you want to send a notification from that source, use `source.notify(notification)`, where `notification` is a `MessageTray.Notification` or subclass thereof

## modalDialog.js
- ModalDialog: A handy class defining a modal dialog. Use `.setButtons` to add buttons to it, and `open/close` to show or hide it.

Examples [endSessionDialog.js](#endsessiondialogjs), [extensionDownloader.js](#extensiondownloaderjs)...

## mpris.js
- MediaMessage: 
- MprisPlayer: 
- MediaSection: 

## notificationDaemon.js
- FdoNotificationDaemon: 
- FdoNotificationDaemonSource: 
- GtkNotificationDaemonNotification: 
- GtkNotificationDaemonAppSource: 
- GtkNotificationDaemon: 
- NotificationDaemon: GNOME Shell uses DBus to listen/send notifications; this handles that

## osdMonitorLabeler.js
- OsdMonitorLabel: 
- OsdMonitorLabeler: 

## osdWindow.js
- LevelBar: 
- OsdWindowConstraint: 
- OsdWindow: 
- OsdWindowManager: 

## overviewControls.js
- SlideLayout: 
- SlidingControl: 
- ThumbnailsSlider: 
- DashSlider: 
- DashSpacer: 
- ControlsLayout: 
- ControlsManager: 

## overview.js
![overview.js](/media/gnome-shell-overlay-mode-windows.png)
- ShellInfo: Handles spawning notification for actions performed from the overview and undoing them
- Overview: The `Overview` triggered when you press the `Super` key. Made up of various tabs defined in other classes. Code in here is to do with animation when the overview shows and hides, loading search providers, interaction with the overview and so on

See also [viewSelector.js](#viewselectorjs), the core `Applications` tab [appDisplay.js](#appdisplayjs) and the core `Windows` tab [workspacesView.WorkspaceDisplay](workspacesviewjs)

## padOsd.js
- KeybindingEntry: 
- ActionComboBox: 
- ActionEditor: 
- PadDiagram: 
- PadOsd: 
- PadOsdService: 

## panel.js
![panel.js](/media/panel-1.png)
> The panel. Yellow: _leftBox, Green: _centerBox, Red: _rightBox

![panel.js](/media/panel-2.png)
> AppMenuButton with its dropdown menu

![panel.js](/media/panel-3.png)
> AggregateMenu

- AppMenuButton: This is the top titlebar (stored in `Main.panel._appMenu`). Inherits from [panelMenu.Button](#panelmenujs), so it has a dropdown menu (by default showing `Quit`)
- ActivitiesButton: The `Activities` button on the Top Left that triggers the overview. It is a [panelMenu.Button](#panelmenujs) but without a menu. Contains the [layout.HotCorner](layoutjs) that triggers the overview
- PanelCorner: The black rounded corners that extend down from the `Top Panel` on either side of the screen. They are painted onto the screen using the panel colour
- AggregateLayout: 
- AggregateMenu: It is the `Status Area` button, it holds the `network/location/power/brightness/volume/system/etc` indicators
- Panel: The `Top Panel`, stored in `Main.panel`. It is split into three `boxes` into which various panel elements are all placed:
    - _leftBox, `Main.panel._leftBox`: Contains the `ActivitiesButton` and the `AppMenuButton`
    - _centerBox, `Main.panel._centerBox`: Contains the [dateMenu.DateMenuButton](#datemenujs) button
    - _rightBox, `Main.panel._rightBox`: Contains the `AggregateMenu`/`Status Area`. However when you want to insert icons into the `Status Area` you should use `Main.panel.addToStatusArea(role, myButton, position)` where `role` is the role that button performs (`network`, `a11y`, ...). There can only be one button performing each role in the `Status Area`


## panelMenu.js
![panelMenu.js](/media/panelmenu.png)
> Example of a panelMenu.Button, being the indicator and menu where the indicator is an icon

- ButtonBox: The base `Button` class for buttons in the `Panel`
- Button: Inherits from [panelMenu.ButtonBox](#panelmenujs) - adds a menu. So this is an object for use in the `Panel` that will have a menu and some sort of display item (e.g. an icon), which you are responsible for defining and adding. The [dateMenu.DateMenuButton](#datemenujs) is an example of this
- SystemIndicator: This is just a `Button` with an icon. Feed it in an icon name (one of the stock icon names) and it will display it. Just about every icon you have in your `Status Area` is one of these

## pointerWatcher.js
- PointerWatch: 
- PointerWatcher: 

## popupMenu.js
- PopupBaseMenuItem: 
- PopupMenuItem: 
- PopupSeparatorMenuItem: 
- Switch: 
- PopupSwitchMenuItem: 
- PopupImageMenuItem: 
- PopupMenuBase: 
- PopupMenu: 
- PopupDummyMenu: 
- PopupSubMenu: 
- PopupMenuSection: 
- PopupSubMenuMenuItem: 
- PopupMenuManager: 

## remoteMenu.js
- RemoteMenuSeparatorItemMapper: 
- RequestSubMenu: 
- RemoteMenuSubmenuItemMapper: 
- RemoteMenuItemMapper: 
- RemoteMenu: 

## remoteSearch.js
- RemoteSearchProvider: A search provider that acts through DBus
- RemoteSearchProvider2: 

## runDialog.js
![runDialog.js](/media/rundialog.png)
- RunDialog: The run dialog that you get on `ALT + F2`. Type commands in here to have them executed. Also defines a couple of `special` commands:
    - lg: opens the [Looking Glass](#lookingglassjs)
    - r, restart: Restarts GNOME Shel. Needed if you make changes to JS files [**WARNING**: Wayland doesn't support this command, you need to change to Xorg Display Server when you log into your account]
    - rt: Reloads the shell theme
    - debugexit: Quits the shell with debug info

## screencast.js
- ScreencastService: 

## screenShield.js
- Clock: 
- NotificationsBox: 
- Arrow: 
- ScreenShield: 

## screenshot.js
- ScreenshotService: 
- SelectArea: 
- Flashspot: 

## scripting.js
**Documentation extracted from the source**
This module provides functionality for driving the shell user interface in an automated fashion. The primary current use case for this is automated performance testing (see `runPerfScript()`), but it could be applied to other forms of automation, such as testing for correctness as well.

When scripting an automated test we want to make a series of calls in a linear fashion, but we also want to be able to let the main loop run so actions can finish. For this reason we write the script as a generator function that yields when it want to let the main loop run.

```javascript
yield Scripting.sleep(1000);
main.overview.show();
yield Scripting.waitLeisure();
```
While it isn't important to the person writing the script, the actual yielded result is a function that the caller uses to provide the callback for resuming the script.

Provides:
- `sleep(milliseconds)`: Used within an automation script to pause the the execution of the current script for the specified amount of time. Use as:
```javascript
    yield Scripting.sleep(500);
```
- `waitLeisure()`: Used within an automation script to pause the the execution of the current script until the shell is completely idle. Use as:
```javascript
    yield Scripting.waitLeisure();
```
- PerfHelper: DBus proxy for `org.gnome.shell.PerfHelper`
- `createTestWindow(width, height, alpha, maximized)`: Creates a window using `gnome-shell-perf-helper` for testing purposes. While this function can be used with yield in an automation script to pause until the DBus call to the helper process returns, because of the normal X asynchronous mapping process, to actually wait until the window has been mapped and exposed, use `waitTestWindows()`
- `waitTestWindows()`: Used within an automation script to pause until all windows previously created with `createTestWindow` have been mapped and exposed.
- `destroyTestWindows()`: Destroys all windows previously created with `createTestWindow()`. While this function can be used with yield in an automation script to pause until the D-Bus call to the helper process returns, this doesn't guarantee that Mutter has actually finished the destroy process because of normal X asynchronicity.
- `defineScriptEvent(name, description)`: Convenience function to define a zero-argument performance event within the `script` namespace that is reserved for events defined locally within a performance automation script.
- `scriptEvent(name)`: Convenience function to record a script-local performance event previously defined with `defineScriptEvent`
- `collectStatistics()`: Convenience function to trigger statistics collection.
- `runPerfScript(scriptModule)`: module object with run and finish functions and event handlers. Runs a script for automated collection of performance data. The script is defined as a Javascript module with specified contents. See the `scripting.js` file for much more detail (it's documented in there).


## search.js
- MaxWidthBin: 
- SearchResult: 
- ListSearchResult: 
- GridSearchResult: 
- SearchResultsBase: 
- ListSearchResults: 
- GridSearchResults: 
- SearchResults: 
- ProviderIcon: 

## separator.js
- HorizontalSeparator: 

## sessionMode.js
- SessionMode: 

## shellDBus.js
- GnomeShell: 
- GnomeShellExtensions: 
- ScreenSaverDBus: 

## shellEntry.js
![shellEntry.js](/media/shellentry.png)
- EntryMenu: A subclass of [popupMenu.PopupMenu](#popupmenujs) used to provide a context menu to a `Clutter.Entry` or `St.Entry` (text box). Do not use this class directly; instead use `ShellEntry.addContextMenu(entry)`. The context menu acts like so: when the user `right-click` the entry, they get a popup menu with `Paste/Copy` and if it is a password dialog it will have a `Show/Hide character` item too

## shellMountOperation.js
![shellMountOperation.js](/media/shellmountoperation.png)
- ListItem: A button displaying a particular application's icon and name, that will launch the application when clicked. These are used in the `ShellProcessesDialog`, one per application that impedes the removal of a device
- ShellMountOperation: 
- ShellUnmountNotifier: 
- ShellMountQuestionDialog: Extends [modalDialog.ModalDialog](#modaldialogjs) to provide a dialog that asks a question about a mount and offer choices
- ShellMountPasswordDialog: 
- ShellProcessesDialog: Extends [modalDialog.ModalDialog](#modaldialogjs) to provide a dialog that shows you which applications are impeding the removal of a device
- GnomeShellMountOpHandler: 

## slider.js
- Slider: 

## switcherPopup.js
- SwitcherPopup: 
- SwitcherList: 

## tweener.js
- ClutterFrameTicker: 

## unlockDialog.js
- UnlockDialog: 

## userWidget.js
- Avatar: 
- UserWidgetLabel: 
- UserWidget: 

## viewSelector.js
- FocusTrap: 
- TouchpadShowOverviewAction: 
- ShowOverviewAction: 
- ViewSelector: 

## windowAttentionHandler.js
![shellMountOperation.js](/media/windowattentionhandler.png)
- WindowAttentionHandler: Handles `window-demands-attention` signals from `global.display` and pops up the `x is ready` notification upon receiving it. When you start up and app it can take a while to load and in the meantime you move on to another window; when the window does actually load you get a notification letting you know the application is ready to be used
- Source: A [messageTray.Source](#messagetrayjs) tailored to window attention requests. If you focus the windows then the notification is no longer relevant so it will remove itself

## windowManager.js
- DisplayChangeDialog: 
- WindowDimmer: When created with an actor (for example a `Meta.WindowActor`), dims that actor. For example when you open a modal dialog from a window, that window is dimmed until you are finished with the modal dialog
- WorkspaceTracker: 
- TilePreview: 
- TouchpadWorkspaceSwitchAction: 
- WorkspaceSwitchAction: 
- AppSwitchAction: 
- ResizePopup: 
- WindowManager: Extra bells and whistles on the undarlying window manager. This handles things like:
    - Showing the workspace switcher popup upon receiving a `switch-to-workspace-*` keybinding
    - Animating all your windows sliding off the screen when you switch workspaces
    - Adding animations to windows when they are `Minimized/Maximized/Mapped/Destroyed`
    - Dimming a parent window if you open a modal dialog for it and undimming when the dialog is dismissed
    - Showing the window switcher `ALT + Tab` popup, and
    - Showing the accesibility switcher `CTRL + ALT + Tab` popup

## windowMenu.js
- WindowMenu: 
- AppMenu: 
- WindowMenuManager: 

## workspace.js
![workspace.js](/media/gnome-shell-overlay-mode-windows.png)
- WindowCloneLayout: 
- WindowClone: The thumbnail of a window that you see in the windows tab of the `Overview`. You can click to activate it, drag it to move it between workspaces. One per window actor
- WindowOverlay: This defines items that are overlaid on the `WindowsClone`. In particular, The windows's caption and the close button that you see on each window in the `Overview`
- LayoutStrategy: 
- UnalignedLayoutStrategy: 
- Workspace: Represents a collection of `WindowOverlay`s in the `Overview`. Each one just looks after the overlays in its own workspace and monitor. It handles how to lay out its overlays. This is not the workspace preview you see in the workspaces sidebar, that is a [workspaceThumbnail.WorkspaceThumbnail](#workspacethumbnailjs)

## workspacesView.js
- WorkspacesViewBase: 
- WorkspacesView: A container for many [workspace.Workspace](#workspacejs)s
- ExtraWorkspaceView: 
- DelegateFocusNavigator: 
- WorkspacesDisplay: This is essentially the `Windows` tab in the `Overview`. On the right hand side it has a sidebar showing workspace thumbnails that you can choose; this is a [workspaceThumbnail.ThumbnailsBox](#workspacethumbnailjs). The part that shows all the window thumbnails is a `WorkspacesView`. This class handles things like when the workspaces preview sidebar (ThumbnailsBox) should be slidden out and in. showing/animating the rectangle about the current workspace in the sidebar animating when dynamic workspaces are added/removed, changing workspaces on scrollin ove the sidebar, etc

## workspaceSwitcherPopup.js
![workspaceSwitcherPopup.js](/media/workspaceswitcherpopup.png)
- WorkspaceSwitcherPopup: This is the popup that appears when you switch workspaces via keybindings, showing which workspace you've switched to

## workspaceThumbnail.js
![workspaceThumbnail.js](/media/workspacethumbnail.png)
- PrimaryActorLayout: 
- WindowClone: This is a thumbnail of a window (used in a `WorkspaceThumbnail`) - one per window. It can be dragged to another workspace to switch its workspace
- WorkspaceThumbnail: This is a thumbnail of a workspace, one per workspace. Shows thumbnails of all the windows on that workspace. It is an up-to-date snapshot of its windows (updates when windows are `Added/Removed/Minimized/State Changed`)
- ThumbnailsBox: This is a collection of workspace thumbnails (the workspaces sidebar you see in the `Overview`). Handles the sliding in or out of workspaces as they are `Added/Destroyed`, and also dragging windows to create new workspaces between existing ones

## xdndHandler.js
- XdndHandler: Sets up `Xdnd` and passes through signals. When a `non-gnome-shell object` is first dragged over a `gnome-shell-object`, tha handler fires a `drag-begin` signal. When the object being dragged leaves the `gnome-shell-object`, the `drage-end` signal is fired. The class somehow incorporates with [dnd.js](#dndjs) code too whereby a draggable target/object registered with `dnd.js` has the appropiate events called on it. Use `Main.xdndHandler` to access the instance of the handler and connect to its signals.


#Components

## automountManager.js
- AutomountManager: 

## autorunManager.js
- ContentTypeDiscoverer: 
- AutorunManager: 
- AutorunDispatcher: 
- AutorunSource: 
- AutorunNotification: 

## __init__.js
- ComponentManager: 

## keyring.js
- KeyringDialog: 
- KeyringDummyDialog: 
- KeyringPrompter: 

## networkAgent.js
- NetworkSecretDialog: 
- VPNRequestHandler: 
- NetworkAgent: 

## polkitAgent.js
- AuthenticationDialog: 
- AuthenticationAgent: 

## telepathyClient.js
- TelepathyClient: 
- ChatSource: 
- ChatNotification: 
- ChatLineBox: 
- ChatNotificationBanner: 

#Status Indicators
These files define the standar status indicators in the status are

## accessibility.js
![accessibility.js](/media/accessibility.png)
- ATIndicator: The [panelMenu.Button](#panelmenujs) defining the accessibility indicator. This provides a number of [popupMenu.PopupSwitchMenuItem](#popupmenujs)s allowing you to toggle on and off various accessibility features
- ATGreeterIndicator: 

## bluetooth.js
![bluetooth.js](/media/bluetooth.png)
- Indicator: The [panelMenu.SystemIndicator](#panelmenujs) defining the bluetooth indicator.

## brightness.js
![brightness.js](/media/brightness.png)
- Indicator: The [panelMenu.SystemIndicator](#panelmenujs) defining the brightness indicator.

## keyboard.js
- LayoutMenuItem: 
- InputSource: 
- InputSourcePopup: 
- InputSourceSwitcher: 
- InputSourceSettings: 
- InputSourceSystemSettings: 
- InputSourceSessionSettings: 
- InputSourceManager: 
- InputSourceIndicator: 

## location.js
- Indicator: 
- AppAuthorizer: 
- GeolocationDialog: 

## network.js
![network.js](/media/network.png)
- NMConnectionItem: 
- NMConnectionSection: 
- NMConnectionDevice: 
- NMDeviceWired: Extends `NMConnectionDevice` for wired connections. It will only display the `On/Off` switch if you only have one wired connection port - if you have more it will have a menu section with them all
- NMDeviceModem: Extends `NMConnectionDevice` for modem `Dial up/Brandband`. Items for individual connections have text describing the connection with an icon for signal strength
- NMDeviceBluetooth: Extends `NMConnectionDevice` for bluetooth.
- NMWirelessDialogItem: 
- NMWirelessDialog: 
- NMDeviceWireless: Extends `NMConnectionDevice` for wireless connections.
- NMVPNConnectionItem: 
- NMVPNSection: 
- DeviceCategory: 
- NMApplet: The [panelMenu.SystemIndicator](#panelmenujs) defining the network connections indicator. Contains the various `NMConnectionDevice` subclasses for each connection device you have.

Also contains functions for comparing `SSID`s and converting signal strengths to a category `excellent/good/ok/weak`

## power.js
![power.js](/media/power.png)
- Indicator: The [panelMenu.SystemIndicator](#panelmenujs) defining the power indicator. Displays an appropiate icon for your current power state as well as calculating estimated battery life, etc

## rfkill.js
- RfkillManager: 
- Indicator: 

## screencast.js
- Indicator: 

## system.js
![system.js](/media/system.png)
- AltSwitcher: 
- Indicator: 

## volume.js
![volume.js](/media/volume.png)
- StreamSlider: 
- OutputStreamSlider: 
- InputStreamSlider: 
- VolumeMenu: 
- Indicator: The [panelMenu.SystemIndicator](#panelmenujs) defining the volume indicator. Containst a [slider.Slider](#sliderjs) for the volume of each of your sound devices and adjusts its icon according to the volume

###### ###############################################################################

## config.js
Contains the constants:
- PACKAGE_NAME: `gnome-shell` (non-localized name of the package).
- PACKAGE_VERSION: your gnome-shell version, a string (e.g. '3.22.2').
- HAVE_BLUETOOTH: whether `gnome-bluetooth` is available (1 or 0).
- HAVE_NETWORKMANAGER: whether `networkmanager` is available (0 or 1)
- GETTEXT_PACKAGE: `gnome-shell`. GNOME-shell's gettext package name.
- LOCALEDIR: the locale directory (/usr/share/locale).
- LIBEXECDIR: /usr/libexe/
- SYSCONFDIR: /etc

## extensionUtils.js
Contains the extensions object (maps UUID to extension object, described in `createExtensionObject`)
- Helpful functions:
    - `getCurrentExtension`: call it from your extension file to get the current extension object (`imports.misc.extensionUtils.getCurrentExtension()`).
    - `versionCheck`: checks if the version in metadata.json is compatible with the current shell version.
    - `isOutOfDate`: checks if an extension is out of date.
    - `createExtensionObject`: creates an object representing an extension.

- ExtensionFinder: 

## fileUtils.js
Functions:
- deleteGFile: deletes a `Gio` file object ("work around `delete` being a keyword in JS" -- just calls `file['delete'](null)`).
- recursivelyDeleteDir: recursively deletes a directory.
- recursivelyMoveDir: recursively move a directory.

## gnomeSession.js

## history.js
- HistoryManager: An object that remembers text up to 512 items `DEFAULT_LIMIT` and optionally saves them into a `gsettings` key

## ibusManager.js
- IBusManager: 

## jsParse.js
This is a set of functions doing some basic parsing of javascript code in order to provide sensible autocompletions.

The main function you will probably want to call from external modules (according to the source) is `getCompletions(text, commandHeader, globalCompletionList)`.
There are a whole bunch of other helper functions in there too. 

> See the source for full documentation.

## keyboardManager.js
- KeyboardManager: 

## loginManager.js
- LoginManagerSystemd: 
- LoginManagerDummy: 

## modemManager.js
- ModemGsm: Class for interacting with DBus interface `org.freedesktop.ModemManager.Modem.Gsm.Network` (mobile internet).
- ModemCdma: Class for interacting with DBus interface `org.freedesktop.ModemManager.Modem.Cdma` (mobile internet).
- BroadbandModem: 

## objectManager.js
- ObjectManager: 

## params.js
Contains a handy function parse that parses user-provided parameters against default parameters (filling in with defaults if not supplied), 
and throwing an error if unrecognised parameters are given (if unrecognised parameters are not allowed). Used throughout the `js/ui/*.js` code.

## smartcardManager.js
- SmartcardManager: 

## util.js
- Handful of utility functions:
    - findUrls: searches input string for URLs.
    - spawn: spawns a process specified by the argument in array form (e.g. `['ls', '-al', '$HOME']`), handling errors by popping up a notification in the message tray.
    - spawnCommandLine: spawns a process specified by a string (e.g. `ls -al $HOME`), handling errors by popping up a notification in the message tray (using `Main.notifyError(#main.notifyError)`).
    
- CloseButton: 

> See the source for full documentation.