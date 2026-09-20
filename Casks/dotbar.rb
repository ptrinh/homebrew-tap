cask "dotbar" do
  version "0.1.17"
  sha256 "288473dc3004002a35df300ab8f8ff20ec1754bef65a1cd4c79e597966065053"

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
