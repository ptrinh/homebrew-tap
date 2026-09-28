cask "dotbar" do
  version "0.1.28"
  sha256 "96cea2c2371622caa7510c213ba27656e9053d321bdbd398b987399a983d80f5"

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
