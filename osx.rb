dep "Sublime Text.app" do
  source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203059.dmg"
end

dep "Google Chrome.app" do
  source "https://dl-ssl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
end

dep "Firefox.app" do
  source "https://download-installer.cdn.mozilla.net/pub/firefox/releases/28.0/mac/en-US/Firefox%2028.0.dmg"
end

dep "LaunchBar.app" do
  source "http://www.obdev.at/downloads/launchbar/LaunchBar-5.6.2.dmg"
end

dep "iTerm.app" do
  source "http://www.iterm2.com/downloads/beta/iTerm2-1_0_0_20140112.zip"
end

dep "MPlayerX.app" do
  source "https://downloads.sourceforge.net/project/mplayerx-osx/MPlayerX-1.0.22.1.zip"
end

dep "SourceTree.app" do
  source "http://downloads.atlassian.com/software/sourcetree/SourceTree_1.8.1.dmg"
end

dep "IntelliJ IDEA 13.app" do
  version "13.1.1"
  source "http://download-cf.jetbrains.com/idea/ideaIU-13.1.1.dmg"
end

dep "all-osx-apps" do
  requires "Sublime Text.app"
  requires "Google Chrome.app"
  requires "Firefox.app"
  requires "iTerm.app"
  requires "MPlayerX.app"
  requires "SourceTree.app"
  requires "IntelliJ IDEA 13.app"
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
