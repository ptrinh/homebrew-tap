cask "proxy-switchboard" do
  version "1.1.3"
  sha256 "d8a9eb19593baabde21d2c5bb3716fe7a7f78fe2db66db7ff1ec28b4fa1e22c1"

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
