cask "proxy-switchboard" do
  version "1.1.1"
  sha256 "72170fd280f0c09336419461fddbc18fb7d021eb1c81514bad79803a4de57b39"

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
