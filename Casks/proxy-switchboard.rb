cask "proxy-switchboard" do
  version "1.1.2"
  sha256 "2a49e14a2d2bf31af6b3a9e929e73ef7847375175c3f004921ca5a75ad935d61"

  url "https://github.com/ptrinh/proxy-switchboard-dist/releases/download/v#{version}/Proxy-Switchboard-#{version}.zip"
  name "Proxy Switchboard"
  desc "Menu-bar app that routes macOS traffic per destination through proxies"
  homepage "https://github.com/ptrinh/proxy-switchboard-dist"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Proxy Switchboard.app"

  zap trash: [
    "~/Library/Application Support/Proxy Switchboard",
    "~/Library/Logs/Proxy Switchboard.log",
  ]
end
