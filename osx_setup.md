# OSX Setup

## Commands

* `cd /Library/WebServer; sudo rm -rf Documents; sudo ln -s ~/dev ./Documents`
* `defaults write -g NSNavPanelExpandedStateForSaveMode -bool TRUE`
* `defaults write com.apple.Safari IncludeDebugMenu YES`
* `git config --global user.name "Matt Hackett"`
* `git config --global user.email "richtaur@gmail.com"`
* `vim /private/etc/apache2/httpd.conf` (uncomment `LoadModule php5_module        libexec/apache2/libphp5.so`)

## Preferences

* Adium
	- Appearance / Emoticons: None
	- Appearance / Automatic Sizing: / [x] Size to fit vertically
	- Advanced / Contact List / Tooltips / [ ] Show contact information tooltips
	- Events / Event preset: Audio Notifications / Sound set: None
	- Messages / Regular Chats / Text Display: / Set Font … / HUGE FONT
* Adobe Photoshop (CS5)
	- General / Image Interpolation: Bilinear
	- Performance / History &amp; Cache / History States: 200 (arbitrary; just a high number!)
	- Units &amp; Rulers / Rulers: pixels
	- Units &amp; Rulers / Type: pixels
	- Guide, Grids & Slices / Grid
		* Gridline Every: 32 pixels
		* Subdivisions: 2
	- File / New / Background Contents: Transparent
	- View / Show / [ ] Pixel Grid
* Chrome
	- Basics / Reopen last pages
	- Home page: Use the New Tab page
	- Personal stuff / Never save passwords …
	- about:flags / Confirm to Quit / Enable
* Divvy
	- [x] Start Divvy at login
	- [x] Use global shortcut to display panel
	- [x] Automatically check for updates
* Finder
	- Advanced / [x] Show all filename extensions
	- Advanced / [ ] Show warning before changing an extension
	- Advanced / When performing a search: Search the Current Folder
* iTerm
	- Bookmarks / Manage Profiles … / Terminal Profiles / Default / [x] Silence terminal bell
	- Bookmarks / Manage Profiles … / Display Profiles / Light Background / (make it look like Dark Background)
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
