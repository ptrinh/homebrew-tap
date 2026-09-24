cask "dotbar" do
  version "0.1.21"
  sha256 "ce3ffaa07fc8867f364548a5f0f1121357e0a6764c130bfc0b12aae07a34f34e"

  url "https://github.com/ptrinh/DotBar/releases/download/v#{version}/DotBar-#{version}.zip"
  name "DotBar"
  desc "Custom text and colored status dots for the macOS menu bar"
  homepage "https://github.com/ptrinh/DotBar"

  depends_on macos: :sonoma

  app "DotBar.app"

  zap trash: [
    "~/Library/Application Support/DotBar",
    "~/Library/Preferences/uk.trinh.DotBar.plist",
  ]
end
