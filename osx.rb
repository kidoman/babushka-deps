dep "Visual Studio Code.app" do
  source "https://go.microsoft.com/fwlink/?LinkID=620882"
end

dep "Google Chrome.app" do
  source "https://dl-ssl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
end

dep "Firefox.app" do
  source "https://download-installer.cdn.mozilla.net/pub/firefox/releases/50.0/mac/en-US/Firefox%2050.0.dmg"
end

dep "LaunchBar.app" do
  source "http://www.obdev.at/downloads/launchbar/LaunchBar-6.7.2.dmg"
end

dep "iTerm.app" do
  source "https://iterm2.com/downloads/stable/iTerm2-3_0_12.zip"
end

dep "MPlayerX.app" do
  source "https://mpx.codeplex.com/downloads/get/1566333"
end

dep "VLC.app" do
  source "http://mirror.fibergrid.in/videolan/vlc/2.2.4/macosx/vlc-2.2.4.dmg"
end

dep "SourceTree.app" do
  source "https://downloads.atlassian.com/software/sourcetree/SourceTree_2.3.2.zip"
end

dep "Disk Inventory X.app" do
  version "1.0"
  source "http://www.alice-dsl.net/tjark.derlien/DIX1.0Universal.dmg"
end

dep "ImageOptim.app" do
  version "1.6.2"
  source "http://imageoptim.com/ImageOptim.tbz2"
end

dep "all-osx-apps" do
  requires "Visual Studio Code.app"
  requires "Google Chrome.app"
  requires "Firefox.app"
  requires "LaunchBar.app"
  requires "iTerm.app"
  requires "MPlayerX.app"
  requires "VLC.app"
  requires "SourceTree.app"
  requires "Disk Inventory X.app"
  requires "ImageOptim.app"
end

dep "auto-hide-dock" do
  met? {
    shell("defaults read com.apple.dock autohide") == "1"
  }

  meet {
    shell("defaults write com.apple.dock autohide -bool true")
    shell("killall -HUP Dock")
  }
end

dep "all-osx-settings" do
  requires "auto-hide-dock"
end
