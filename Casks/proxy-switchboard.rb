cask "proxy-switchboard" do
  version "1.2.0"
  sha256 "8113712ed81172bb1c99e3dac7be7761dee4601986502bd93e2c64eeba10728d"

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
