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
* [components](#componentsjs) directory
    * [automountManager.js](#automountmanagerjs): Manages the automount of devices, like when you insert a USB stick and it is mounted automatically.
    * [autorunManager.js](#autorunmanagerjs): Manage the autorun function, like when you insert some device in the computer and a dialog asking what to do shown. 
    * [__init__.js](#initjs)
    * [keyring.js](#keyringjs)
    * [networkAgent.js](#networkagentjs): Manage network interface `wifi/wire/bluetooth`
    * [polkitAgent.js](#polkitagentjs): Handles popping up a password dialog on receiving authentication requests
    * [telepathyClient.js](#telepathyclientjs): Handles chat through telepathy and setting up notifications etc for these
* [status](#statusjs) directory: This containst the files for all the standard status indicators in the status area
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
- DateMenuButton: Subclass of [PanelMenu.Button](#panelmenujs) to provide the date menu in the middle top panel.

See also [calendar.js](#calendarjs)

## dnd.js
This allow you to add `drag-and-drop` functionality to your own classes. You use the following functions defined in the file:

- addDragMonitor: You define an object defining the drag behaviour you want, and use `addDragMonitor` to add it. A drag monitor is an object with the key `dragMonitor` whick is a callback for what happens when a drag monitor event occurs `See [dash.js](#dashjs) and [workspacesView.js](workspacesviewjs) for examples`
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
- LayoutManager: Manages layout of items on the stage `message tray/top panel/hot corners` and updates when monitors change
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
- URLHighlighter: 
- ScaleLayout: 
- LabelExpanderLayout: 
- Message: 
- MessageListSection: 

## messageTray.js
- FocusGrabber: 
- NotificationPolicy: 
- NotificationGenericPolicy: 
- NotificationApplicationPolicy: 
- Notification: 
- NotificationBanner: 
- SourceActor: 
- SourceActorWithLabel: 
- Source: 
- MessageTray: 
- SystemNotificationSource: 

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
- NotificationDaemon: 

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
- ShellInfo: 
- Overview: 

## padOsd.js
- KeybindingEntry: 
- ActionComboBox: 
- ActionEditor: 
- PadDiagram: 
- PadOsd: 
- PadOsdService: 

## panel.js
- AppMenuButton: 
- ActivitiesButton: 
- PanelCorner: 
- AggregateLayout: 
- AggregateMenu: 
- Panel: 

## panelMenu.js
- ButtonBox: 
- Button: 
- SystemIndicator: 

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
- RemoteSearchProvider: 
- RemoteSearchProvider2: 

## runDialog.js
- RunDialog: 

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
- EntryMenu: 

## shellMountOperation.js
- ListItem: 
- ShellMountOperation: 
- ShellUnmountNotifier: 
- ShellMountQuestionDialog: 
- ShellMountPasswordDialog: 
- ShellProcessesDialog: 
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
- WindowAttentionHandler: 
- Source: 

## windowManager.js
- DisplayChangeDialog: 
- WindowDimmer: 
- WorkspaceTracker: 
- TilePreview: 
- TouchpadWorkspaceSwitchAction: 
- WorkspaceSwitchAction: 
- AppSwitchAction: 
- ResizePopup: 
- WindowManager: 

## windowMenu.js
- WindowMenu: 
- AppMenu: 
- WindowMenuManager: 

## workspace.js
- WindowCloneLayout: 
- WindowClone: 
- WindowOverlay: 
- LayoutStrategy: 
- UnalignedLayoutStrategy: 
- Workspace: 

## workspacesView.js
- WorkspacesViewBase: 
- WorkspacesView: 
- ExtraWorkspaceView: 
- DelegateFocusNavigator: 
- WorkspacesDisplay: 

## workspaceSwitcherPopup.js
- WorkspaceSwitcherPopup: 

## workspaceThumbnail.js
- PrimaryActorLayout: 
- WindowClone: 
- WorkspaceThumbnail: 
- ThumbnailsBox: 

## xdndHandler.js
- XdndHandler: 

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

## accessibility.js
- ATIndicator: 
- ATGreeterIndicator: 

## bluetooth.js
- Indicator: 

## brightness.js
- Indicator: 

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
- NMConnectionItem: 
- NMConnectionSection: 
- NMConnectionDevice: 
- NMDeviceWired: 
- NMDeviceModem: 
- NMDeviceBluetooth: 
- NMWirelessDialogItem: 
- NMWirelessDialog: 
- NMDeviceWireless: 
- NMVPNConnectionItem: 
- NMVPNSection: 
- DeviceCategory: 
- NMApplet: 

## power.js
- Indicator: 

## rfkill.js
- RfkillManager: 
- Indicator: 

## screencast.js
- Indicator: 

## system.js
- AltSwitcher: 
- Indicator: 

## volume.js
- StreamSlider: 
- OutputStreamSlider: 
- InputStreamSlider: 
- VolumeMenu: 
- Indicator: 

###### ###############################################################################

## extensionUtils.js
- ExtensionFinder: 

## fileUtils.js

## gnomeSession.js

## history.js
- HistoryManager: 

## ibusManager.js
- IBusManager: 

## jsParse.js

## keyboardManager.js
- KeyboardManager: 

## loginManager.js
- LoginManagerSystemd: 
- LoginManagerDummy: 

## modemManager.js
- ModemGsm: 
- ModemCdma: 
- BroadbandModem: 

## objectManager.js
- ObjectManager: 

## params.js

## smartcardManager.js
- SmartcardManager: 

## util.js
- CloseButton: 
