
const St = imports.gi.St;
const Clutter = imports.gi.Clutter;
const Main = imports.ui.main;
const PanelMenu = imports.ui.panelMenu;
const PopupMenu = imports.ui.popupMenu;
const Lang = imports.lang;

function init() {}

const PopupMenuExample = new Lang.Class({
	Name: 'PopupMenuExample',
	Extends: PanelMenu.Button,

	_init: function() {
		this.parent(0.0, 'PopupMenuExample');
		this.actor.add_style_class_name('panel-status-button');
		this.box = new St.BoxLayout({ vertical: false, style_class: 'panel-status-menu-box' });
		this.icon =  new St.Icon({ icon_name: 'system-search-symbolic', style_class: 'system-status-icon' });
		this.box.add(this.icon);
		this.box.add(PopupMenu.arrowIcon(St.Side.BOTTOM));


		this.actor.add_child(this.box);

		// Prepare the special menu : a submenu for updates list that will look like a regular menu item when disabled
		// Scrollability will also be taken care of by the popupmenu
		this.menuExpander = new PopupMenu.PopupSubMenuMenuItem('PopupSubMenuMenuItem');

		this.label1 = new St.Label({text:'Item 1'});
		let label2 = new St.Label({text: 'Item 2'});


		this.menuExpander.menu.box.add(this.label1);
		this.menuExpander.menu.box.add(label2);
		this.menuExpander.menu.box.style_class = 'PopupSubMenuMenuItemStyle';

		// Other standard menu items
		let menuitem = new PopupMenu.PopupMenuItem(_('PopupMenuItem'));
		let switchmenuitem = new PopupMenu.PopupSwitchMenuItem(_('PopupSwitchMenuItem'));

		switchmenuitem.connect('toggled', Lang.bind(this, function(object, value){
			if(value) {
				this.label1.set_text('On');
			} else {
				this.label1.set_text('Off');
			}
		}));

		let imagemenuitem = new PopupMenu.PopupImageMenuItem('PopupImageMenuItem', 'system-search-symbolic');		

		// Assemble all menu items into the popup menu
		this.menu.addMenuItem(this.menuExpander);
		this.menu.addMenuItem(new PopupMenu.PopupSeparatorMenuItem());
		this.menu.addMenuItem(menuitem);
		this.menu.addMenuItem(switchmenuitem);
		this.menu.addMenuItem(imagemenuitem);

	},

	destroy: function() {
		this.parent();
	}
});

let button;

function enable() {
	button = new PopupMenuExample;
	Main.panel.addToStatusArea('PopupMenuExample', button, 0, 'right');
}

function disable() {
	p.destroy();	
}
