dep "Dropbox.app" do
  source "https://www.dropbox.com/download?plat=mac"
end

dep "all-osx-apps" do
  requires "Dropbox.app"
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
