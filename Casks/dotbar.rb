cask "dotbar" do
  version "0.1.4"
  sha256 "9b3f3fed8a4c85dea1e58034b3b8e257371460adb652f12d6e15e786313f5870"

  url "https://github.com/ptrinh/DotBar/releases/download/v#{version}/DotBar-#{version}.zip"
  name "DotBar"
  desc "Custom text and colored status dots for the macOS menu bar"
  homepage "https://github.com/ptrinh/DotBar"

  depends_on macos: :sonoma

  app "DotBar.app"

  zap trash: [
    "~/Library/Application Support/DotBar",
    "~/Library/Preferences/com.ptrinh.DotBar.plist",
  ]
end
