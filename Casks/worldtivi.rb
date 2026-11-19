cask "worldtivi" do
  version "1.0.5"
  sha256 "be6a02711b4d6885d198145211cf356be3363edf8416cdbe3102468781bb0513"

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
