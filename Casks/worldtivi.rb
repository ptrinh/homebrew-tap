cask "worldtivi" do
  version "1.0.4"
  sha256 "1e7ab1f0c02c316487c818cc7b6ba2d2950bd9a4979ac1be993e0b73f7e00f30"

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
