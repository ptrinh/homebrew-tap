cask "worldtivi" do
  version "1.0.8"
  sha256 "616daffc2caa83aa4ab2aefa72255beb5a0a89c6c4f5d599152f54625c4c6290"

  url "https://github.com/ptrinh/worldtivi-public/releases/download/v#{version}/WorldTivi-#{version}-mac-universal.dmg"
  name "World Tivi"
  desc "IPTV player for M3U playlists, Xtream Codes and Stalker portals"
  homepage "https://worldtivi.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "World Tivi.app"

  zap trash: [
    "~/Library/Application Support/uk.trinh.worldtivi.desktop",
    "~/Library/Caches/uk.trinh.worldtivi.desktop",
    "~/Library/Preferences/uk.trinh.worldtivi.desktop.plist",
    "~/Library/Saved Application State/uk.trinh.worldtivi.desktop.savedState",
    "~/Library/WebKit/uk.trinh.worldtivi.desktop",
  ]
end
