cask "dotbar" do
  version "0.1.11"
  sha256 "b23b4efbcb7f6803e6bba114fcd8f7b2be6716ea0139f7bbe239b8e9c44d4f89"

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
