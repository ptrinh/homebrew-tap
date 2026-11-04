cask "dotbar" do
  version "0.1.29"
  sha256 "555f97e9068481a737c93073b97a40f67e829a17c548d6870599d4ab990ebe11"

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
