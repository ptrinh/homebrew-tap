cask "worldtivi" do
  version "1.0.7"
  sha256 "bc8f998ff548da5c40d9b8671968994693531998a8fe7f024c44ddf148608996"

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
