#!/usr/bin/env bash

# echo "Setting shell to fish"
  # chsh -s /opt/homebrew/bin/fish

echo "Configure locatedb"
  sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

echo "Set finder to open to home directory"
  defaults write com.apple.finder NewWindowTarget PfLo

echo "Set other finder settings"
  /usr/libexec/PlistBuddy -c \"Set ':DesktopViewSettings:IconViewSettings:arrangeBy' name\" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c \"Set ':DesktopViewSettings:IconViewSettings:gridSpacing' 100\" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c \"Set ':DesktopViewSettings:IconViewSettings:iconSize' 44\" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c \"Set ':DesktopViewSettings:IconViewSettings:labelOnBottom' false\" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c \"Set ':DesktopViewSettings:IconViewSettings:showItemInfo' true\" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c \"Set ':DesktopViewSettings:IconViewSettings:showIconPreview' true\" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c \"Set ':DesktopViewSettings:IconViewSettings:textSize' 11\" ~/Library/Preferences/com.apple.finder.plist

echo "Set remaining macOS defaults"
  defaults write NSGlobalDomain AppleKeyboardUIMode -int 3 # Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)

  # Put the Dock on the left, autohide, etc.
  defaults write com.apple.dock orientation -string left
  defaults write com.apple.dock autohide -bool true
  defaults write com.apple.dock "show-recents" -bool false

  defaults write com.apple.dock launchanim -bool false # Don't animate opening applications from the Dock
  defaults write NSGlobalDomain AppleShowAllExtensions -bool true # Show all filename extensions in Finder
  defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true # Expand save panel by default
  defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true # Expand print panel by default
  defaults write com.apple.LaunchServices LSQuarantine -bool false # Disable the "Are you sure you want to open this application?" dialog
  defaults write com.apple.screencapture location $HOME/Downloads # Store screenshots in ~/Downloads

  # shell 'defaults write com.apple.screencapture disable-shadow -bool true' # Disable shadow in screenshots
  # shell 'defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false' # Disable press-and-hold for keys in favor of key repeat

  # Set a blazingly fast keyboard repeat rate
  # defaults write -g KeyRepeat -int 0
  defaults write -g InitialKeyRepeat -int 10
  defaults write -g KeyRepeat -int 1

  defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false # Disable auto-correct
  defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false # Disable window animations

  # shell 'defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true' # Enable AirDrop over Ethernet and on unsupported Macs running Lion

  # Disable disk image verification
  # shell 'defaults write com.apple.frameworks.diskimages skip-verify -bool true'
  # shell 'defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true'
  # shell 'defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true'

  # Display full POSIX path as Finder window title
  # defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

  defaults write NSGlobalDomain NSWindowResizeTime -float 0.001 # Increase window resize speed for Cocoa applications
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true # Avoid creating .DS_Store files on network volumes
  defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false # Disable the warning when changing a file extension
  # shell "defaults write com.apple.finder EmptyTrashSecurely -bool true' # Empty Trash securely by default

  # Require password immediately after sleep or screen saver begins
  # shell 'defaults write com.apple.screensaver askForPassword -int 1'
  # shell 'defaults write com.apple.screensaver askForPasswordDelay -int 0'

  # shell "defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true" # Enable tap to click (Trackpad)

  defaults write com.apple.Safari IncludeDebugMenu -bool true # Enable Safari's debug menu

  defaults write com.apple.terminal StringEncodings -array 4 # Only use UTF-8 in Terminal.app
  chflags nohidden ~/Library # Show the ~/Library folder

  # defaults write com.apple.Safari ProxiesInBookmarksBar "()" # Remove useless icons from Safari's bookmarks bar
  # shell 'defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false' # Disable Resume system-wide

  # shell 'for app in Finder Dock; do killall "$app"; done' # Kill affected applications (hopefully you don't have Mail or Safari Open when running this script)

  echo "0x08000100:0" > ~/.CFUserTextEncoding # Fix for the ancient UTF-8 bug in QuickLook (http://mths.be/bbo)

  defaults write -g NSToolbarTitleViewRolloverDelay -float 0 # Disable the hover delay for showing "proxy" icons for files in Big Sur.
