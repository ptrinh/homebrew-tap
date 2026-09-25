cask "dotbar" do
  version "0.1.25"
  sha256 "0fabc9f9603c25097a5968a5c51999284f143c852ab1bfe1ac11c638f1d85ed0"

  url "https://github.com/ptrinh/DotBar/releases/download/v#{version}/DotBar-#{version}.zip"
  name "DotBar"
  desc "Claude & Codex usage, system stats and your own scripts in the menu bar"
  homepage "https://github.com/ptrinh/DotBar"

  depends_on macos: :sonoma

  app "DotBar.app"
  binary "#{appdir}/DotBar.app/Contents/MacOS/DotBar", target: "dotbar"

  zap trash: [
    "~/Library/Application Support/DotBar",
    "~/Library/Preferences/uk.trinh.DotBar.plist",
  ]
end
