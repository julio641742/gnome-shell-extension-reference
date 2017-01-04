#Getting Started

Notes:
- You must have GNOME Shell on your system.
- You need to be familiar with the GNOME Shell style guidelines before developing the code for it

##Clutter and Tweener
- The GNOME Shell uses `Clutter` to lay out its graphical components. 
- The GNOME Shell has a custom `Clutter`-based toolkit called `St` `Shell Toolkit` that defines useful actors. Some of these actors, such as `St.BoxLayout` and `St.Bin` implement various layout options.
- The GNOME Shell does not use `Clutter` animation framework, but uses `Tweener` instead.
- Important characteristics things in clutter are:
    - Stage: contain some actors (text, rectangles, etc). It is the window of the application. Also is an actor
    - Actor: GUI object
        - `show()`: you have to show each actor to be visible to the user
        - `hide()`: hide the actor

**More information found in**

- [Clutter Reference](https://developer.gnome.org/clutter/stable/)
- [Tweener Documentation](http://hosted.zeh.com.br/tweener/docs/en-us/)
- [Shell Toolkit (St) Reference](https://www.roojs.org/seed/gir-1.2-gtk-3.0/seed/St.html)

##CSS
GNOME Shell uses `CSS` theming, which makes it easy to try out various UI changes or add new themes. The file that contains the GNOME Shell `CSS` is [in here](https://github.com/GNOME/gnome-shell/blob/master/data/theme/gnome-shell.css)

##Developer Tools
- Typing `r` or `restart` in the `ALT + F2` prompt will restart GNOME Shell. This is useful when you are make changes to the GNOME Shell code while working within the GNOME Shell. You don't need to compile anything if you only changed JavaScript code
- Typing `rt` in the `ALT + F2` prompt will reload the GNOME Shell theme. This is useful when you are a theme designer and want to test changes in your theme without restarting the whole shell.
- Typing `debugexit` in the `ALT + F2` prompt will quit GNOME Shell. This is generally only useful when you are running a development version of GNOME Shell which you started from the command line; in a normal GNOME 3 session, gnome-session will just restart GNOME Shell if you exit it. 

###Looking Glass
It is GNOME Shell' integrated debugger and inspect tool.
- You currently run it by pressing `ALT + F2`, typing `lg`, then `Return`
- You can leave `Looking Glass` by pressing `Esc` in its `Evaluator pane.
- Looking Glass has three major panes (`Evaluator/Windows/Extensions`) and one tool (the `Picker`)

#####Evaluator
This is an interactive JavaScript prompt. You can type arbitrary JavaScript at the prompt, and it will be evaluated. Try, in order:

```javascript
    1+1
    it+1
    Main.panel.statusArea.dateMenu.container
    Main.panel._centerBox.remove_actor(it);
    Main.panel._rightBox.insert_child_at_index(r(2), 0)
    Main.notify('Hello world')
```
Press `ALT + F2`, then `r + Enter` to restart GNOME Shell
#######Special evaluator features
Each computed value is saved by default, and can be referred back to. Typing `r(number)` will get you back the result with that number, and `it` is the last result.
The evaluator also has a history feature; you can press `Up/Down` to access previously used entries.

#####Windows
This is a list of all opened windows. Pay attention to wmclass. This name let you identify a application inside GNOME. 

#####Extensions
This is a list of all currently installed extensions. You can use the `View Source` link to quickly access the extension folder. If some extension reach an error, the error will be displayed there (this is not always true)


#####The Picker
The picker alloys you to visually select any object from the shell's scene. When you do, it is inserted as a result into the `Evaluator` pane



#Extensions
The GNOME Shell extension design is designed to give a high degree of power to the parts of the GNOME interface managed by the shell, such as window management and application launching. It simply loads arbitrary JavaScript and CSS. This gives developers a way to make many kinds of changes and share those changes with others, without having to patch the original source code and recompile it, and somehow distribute the patched code.

The extension system is a replacement for the "applets" or "widgets" system of GNOME 2. Extensions can add their own items to the top panel, but they can also do much more: adding a custom search provider, for instance.

###Available Extensions
There is a collection of extensions at the [GNOME Shell Extensions repository website](https://extensions.gnome.org/). You should just be able to flip the switch on a compartible extension's page to turn it on.

###Extension installation locations
Extensions can be installed per-user in `~/.local/share/gnome-shell/extensions`, or systemwide in `/usr/share/gnome-shell/extensions` and `/usr/local/share/gnome-shell/extensions`. 

###Viewing installed extensions
- Installed extensions are listed on [Extensions Webpage](https://extensions.gnome.org/local/)
- Installed extensions are listed in Looking Glass developer console.
- Extensions can also be viewed in GNOME Tweak Tool

###Enabling extensions
- You can enable and disable extensions on [Extensions Webpage](https://extensions.gnome.org/local/)
- Per-user and systemwide extensions have to be enabled before they can be used. You can do this with the GNOME Tweak Tool or a recent version of `gnome-shell-extension-tool`.
- For code changes to become effective, you need to reload the GNOME Shell by pressing `ALT + F2` and entering `r`.

###Uninstalling extensions
- Uninstall an extension by clicking the uninstall button ("X") on [Extensions Webpage](https://extensions.gnome.org/local/)
- Use the GNOME Tweak Tool


##Anatomy of an extension
When creating an extension, you must pick a uuid. This is a globally-unique identifier for your extension, similar in form to an email address, but need not be an actual email address. An extension, when installed on the filesystem, is a directory whose name is the same as your extension's uuid. In order to prevent certain attacks, the uuid must follow guidelines:
- The UUID must contain only alphanumerical characters, the period (.), the at symbol (@), the underscore (_), and the dash (-). Unicode characters are not allowed.
- Your extension must not end with gnome.org. Extensions are not affiliated with GNOME and must not appear to be. 

> Must be something like this `your-extension-name@some-website.com`

Inside the directory, the bare bones of an extension are two files, `metadata.json` and `extension.js`. The content of a `metadata.json` looks like this: 

```json
{
    "uuid": "your-extension-name@some-website.com",
    "name": "My extension",
    "description": "This extension does this",
    "url": "http://example.com/extensions",
    "shell-version": [
        "3.18",
        "3.20",
        "3.22"
    ]              
}
```

The `extension.js` file is the GNOME-javascript file that GNOME Shell uses to run your extension. It MUST have at least three functions in it:
- `init`: called to initialise your extension.
- `enable`: called when the user actually enables your extension. This is where you do whatever you want your extension to do.
- `disable`: called when the user disables your extension. It should stop whatever your extension does and restore the system to a state such that it looks like your extension was never there.

There is also an optional file `stylesheet.css` which you can use to style things in your extension, and you can of course have other files (like images, extra javascript files, ...).

So an extension will typically look like this:

```bash
ls ~/.local/share/gnome-shell/extensions/your-extension-name@some-website.com
    extension.js
    metadata.json
    stylesheet.css
```

####Extension Preferences
Extensions may be configured in a consistent manner using the `gnome-shell-extension-prefs` tool. To hook into it, provide a simple javascript file called `prefs.js`. It must contain a function labeled `buildPrefsWidget`, which should return some sort of GTK+ widget. Whatever is returned from there will be inserted into the Preferences widget screen. Beyond that, a function named `init` may also be provided, and will be invoked after the file is loaded but before `buildPrefsWidget` is invoked. 