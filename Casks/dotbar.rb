cask "dotbar" do
  version "0.1.23"
  sha256 "9557a042a3520dfe9495c501c70a1e02678cd1df88493b664874c198f7149c3a"

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
