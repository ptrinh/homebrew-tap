cask "proxy-switchboard" do
  version "1.3.1"
  sha256 "4ed7a27ef77baf09be6fd410d025fdb4426aaf4b987189517c4db58462e30ffd"

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
