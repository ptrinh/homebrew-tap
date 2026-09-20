cask "dotbar" do
  version "0.1.5"
  sha256 "8104c342fcd440eabb5bd8ddb866e32f3ff02e789edb23561e75a48a1110327d"

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
