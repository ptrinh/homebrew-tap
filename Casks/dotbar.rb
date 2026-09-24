cask "dotbar" do
  version "0.1.22"
  sha256 "752fb04fe8e5af30c6097c7eac871a6bf1e84fc8b73e54b4e5c7592e6c6f6bde"

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
