# OSX Setup

## Commands

* `defaults write -g NSNavPanelExpandedStateForSaveMode -bool TRUE`
* `defaults write com.apple.Safari IncludeDebugMenu YES`
* `defaults write org.vim.MacVim MMNativeFullScreen 0`
* `git config --global user.name "Matt Hackett"`
* `git config --global user.email "richtaur@gmail.com"`

## Apache

* `cd /Library/WebServer; sudo rm -rf Documents; sudo ln -s ~/dev ./Documents`
* `sudo vim /private/etc/apache2/httpd.conf`
	- uncomment the line `LoadModule php5_module        libexec/apache2/libphp5.so`

## Preferences

* Adium
	- Appearance / Emoticons: None
	- Appearance / Automatic Sizing: / [x] Size to fit vertically
	- Advanced / Contact List / Tooltips / [ ] Show contact information tooltips
	- Events / Event preset: Audio Notifications / Sound set: None
	- Messages / Regular Chats / Text Display: / Set Font … / HUGE FONT
* Adobe Photoshop (CS5)
	- General / Image Interpolation: Bilinear
	- Performance / History & Cache / History States: 500 (arbitrary; just a high number!)
	- Units & Rulers / Rulers: pixels
	- Units & Rulers / Type: pixels
	- Guide, Grids & Slices / Grid
		* Gridline Every: 32 pixels
		* Subdivisions: 2
	- File / New / Background Contents: Transparent
	- View / Show / [ ] Pixel Grid
	- Window / History / (Menu in upper right) / History Options… / [x] Make Layer Visibility Changes Undoable
* Chrome
	- Chrome / [x] Warn Before Quitting
	- Basics / Reopen last pages
	- Home page: Use the New Tab page
	- Personal stuff / Never save passwords …
	- Tools / Task Manager / [x] JavaScript memory
* Divvy
	- [x] Start Divvy at login
	- [x] Use global shortcut to display panel
	- [x] Automatically check for updates
* Finder
	- Advanced / [x] Show all filename extensions
	- Advanced / [ ] Show warning before changing an extension
	- Advanced / When performing a search: Search the Current Folder
	- Sidebar / DEVICES
		* [ ] Belmont
		* [ ] Hard disks
		* [x] External disks
		* [ ] iDisk
		* [x] CDs, DVDs, and iPods
	- Sidebar / SEARCH FOR
		* (uncheck all)
* iTerm
	- Bookmarks / Manage Profiles … / Terminal Profiles / Default / [x] Silence terminal bell
	- Bookmarks / Manage Profiles … / Display Profiles / Light Background / (make it look like Dark Background)
	- General / Windows / [ ] Use Lion-style Fullscreen windows
* iTunes
	- Advanced / [ ] Copy files to iTunes Media folder …
	- View / [x] as List
	- View / View Options… / Show Columns / [x] Date Added
	- View / View Options… / Show Columns / [ ] Rating
* Keychain Access
	- General / [x] Show Status in Menu Bar
* Safari
	- Advanced / [x] Show Develop menu in menu bar
* Songbird
	- Manage Files / [ ] Allow Songbird to manage files

## System Preferenes

* Personal
	- Desktop & Screen Saver / Screen Saver / Hot Corners…
		* Top left: Put Display to Sleep
		* Top right: All Windows
		* Bottom right: Application Windows
	- Expose & Spaces / Expose / Dashboard / Hide and show: / -
	- Spotlight
		* [ ] Spotlight menu keyboard shortcut
		* [ ] Spotlight window keyboard shortcut
* Hardware
	- Keyboard / Keyboard Shortcuts / Front Row / [ ] Hide and show Front Row
	- Keyboard / Keyboard Shortcuts: Full Keyboard Access = All controls
		* Keyboard / Key Repeat Rate: Fastest
	- Trackpad
		* [x] Tap to Click
		* Screen Zoom / Options … / [ ] Smooth images …
* Internet & Wireless
	- Sharing / Computer Name: $AWESOME
	- Sharing / [x] Web Sharing
* System
	- Accounts / My Account / Login Items
		* Alfred
		* Divvy
		* Dropbox
		* Flux
		* Growl
* Other
	- Wacom Tablet
		* Tool: / Functions / Touch Strip / Keystroke…
			- Up = command+
			- Down = command-
