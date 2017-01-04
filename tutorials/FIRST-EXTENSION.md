# My First extension

> You should have read [Getting Started](../GETTING-STARTED.md) file first.

Finally! Now, we do our first simple extension, a simple hello world. For do that, we use a gnome tool for do extensions called "gnome-shell-extension-tool". Then, to start your first extension put this in a terminal: 

```bash
gnome-shell-extension-tool --create-extension
```

![terminal](../media/gnome-shell-extension-tool-create-extension.png)

Then you are asked about the name of your application. For this extension we put in `my first extension` and press enter.

Then you are asked about a description. Put something like: `this is an example of an extension`

Then you are asked about an UUID. In that case, we write `first-extension@yourname.com` and press enter.

Tada! The code of the main file is shown in gedit. 

Now [enable](../GETTING-STARTED.md#enabling-extensions) your extension. Now, do you see in the system tray a new icon with a gears shape? Click it and you can see how your extension tells you "Hello, world!".
Analyze this visually. You see an icon in the system tray. Also, when you click it, you see a label and this label has an animation (from opacity 100% to opacity 0%). Now, we'll see in the code how it is defined.

![gnometweak](../media/gnome-tweak.png)
> GNOME Tweak Tool, here is displayed all the `metadata.json` info related to the extension

![gnometweak](../media/first-extension-button.png)
> Gears icon in the top menu right corner

![gnometweak](../media/first-extension-animation.png)


To see the code of your extension and edit it you have to know where is it. It is in `~/.local/share/gnome-shell/extensions/` and there are all extensions, including your new extension `first-extension@yourname.com` folder. Go to your extension folder, and you'll see a `extension.js`, a `metadata.json` and a `stylesheet.css`

 ![gnometweak](../media/files.png)

Go to your favorite IDE (Anjuta, Eclipse or even gedit) and open the file `extension.js`. Then you can see the code of your extension.

The code is not commented, so I commented carefully the code to understand it better for a beginner.

This is the code commented: 
```javascript
/*
In this example we will be click a button in the top bar,
causing an event that create a text label (hello world), which with some
animation, will be decreasing its opacity from 100% to 0%
*/

/* Import St because is the library that allow you to create UI elements */
const St = imports.gi.St;

/*
Import Main because is the instance of the class that have all the UI elements
and we have to add to the Main instance our UI elements
*/
const Main = imports.ui.main;

/* Import tweener to do the animations of the UI elements */
const Tweener = imports.ui.tweener;

/* Global variables for use as button to click (button) and a text label. */
let text, button;

/*
Function to call when the label is opacity 0%, as the label remains as a
UI element, but not visible, we have to delete it explicitily. So since
the label reaches 0% of opacity we remove it from Main instance.
*/
function _hideHello() {
    Main.uiGroup.remove_actor(text);
    text = null;
}

function _showHello() {
    /*
    If text not already present, we create a new UI element, using ST library, that allows us
    to create UI elements of gnome-shell.
    */
    if (!text) {
        text = new St.Label({ style_class: 'helloworld-label', text: "Hello, world!" });
        Main.uiGroup.add_actor(text);
    }

    text.opacity = 255;

    /*
    We have to choose the monitor we want to display the hello world label. Since in gnome-shell
    always has a primary monitor, we use it(the main monitor)
    */
    let monitor = Main.layoutManager.primaryMonitor;

    /*
    We change the position of the text to the center of the monitor.
    */
    text.set_position(monitor.x + Math.floor(monitor.width / 2 - text.width / 2),
                      monitor.y + Math.floor(monitor.height / 2 - text.height / 2));

    /*
    And using tweener for the animations, we indicate to tweener that we want
    to go to opacity 0%, in 2 seconds, with the type of transition easeOutQuad, and,
    when this animation has completed, we execute our function _hideHello.
    */
    Tweener.addTween(text,
                     { opacity: 0,
                       time: 2,
                       transition: 'easeOutQuad',
                       onComplete: _hideHello });
}

/*
This is the init function, here we have to put our code to initialize our extension.
we have to be careful with init(), enable() and disable() and do the right things here.
*/
function init() {
    /*
    We create a button for the top panel. We pass to the constructor a map of properties, properties from St.Bin and its
    parent classes, like St.Widget. So we declare this properties: a style class(from css theming of gnome shell), we made it reactive
    so the button respond for the mouse clicks, we made it that can focus, so marks the button as being able to receive keyboard focus 
    via keyboard navigation, we made the button to fill the x space, and we don't want to fill the y space, so we set the values trues and false respectively
    and we want that the button be reactive to the hover of the mouse, so we set the value of the track_hover property to true.
    */
    button = new St.Bin({ style_class: 'panel-button',
                          reactive: true,
                          can_focus: true,
                          x_fill: true,
                          y_fill: false,
                          track_hover: true });

    /*
    We create an icon with the system-status-icon icon and give it the name "system-run"
    */    
    let icon = new St.Icon({ icon_name: 'system-run-symbolic',
                             style_class: 'system-status-icon' });

    /*
    We put as a child of the button the icon, so, in the structure of actors we have the icon inside the button that is a
    container.
    */
    button.set_child(icon);

    /*
    We connect the actor signal "button-press-event" from the button to the funcion _showHello. In this manner,
    when we press the button, this signal is emitted, and we captured it and execute the _showHello function.
    You can see all signals in the clutter reference(because we are using St that implements actors from clutter, and
    this signals comes from the actor class)
    */
    button.connect('button-press-event', _showHello);
}

/*
We have to write here our main extension code and the things that actually make works the extension(Add ui elements, signals, etc).
*/
function enable() {
    /*
    We add the button we created before to the rigth panel of the top panel (where the sound and wifi settings are)
    */
    Main.panel._rightBox.insert_child_at_index(button, 0);
}

/*
We have to delete all conections and things from our extensions, to let the system how it is before our extension. So
We have to unconnect the signals we connect, we have to delete all UI elements we created, etc.
*/
function disable() {
    /*
    We remove the button from the right panel
    */
    Main.panel._rightBox.remove_child(button);
}
```
