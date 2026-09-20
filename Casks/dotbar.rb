cask "dotbar" do
  version "0.1.6"
  sha256 "0b2e36d7b7351a916ae8714a1b2a05d88fd6684ae79016575e5213100bae6c1e"

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
