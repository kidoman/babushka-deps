dep "Sublime Text.app" do
  source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203059.dmg"
end

dep "Google Chrome.app" do
  source "https://dl-ssl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
end

dep "LaunchBar.app" do
  source "http://www.obdev.at/downloads/launchbar/LaunchBar-5.6.2.dmg"
end

dep "all-osx-apps" do
  requires "Sublime Text.app"
  requires "LaunchBar.app"
  requires "Google Chrome.app"
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
