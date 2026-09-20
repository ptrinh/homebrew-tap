cask "dotbar" do
  version "0.1.13"
  sha256 "b7690522f8ade39253bdf04b97307caeb8ebd817ee43cc543ad0e968fb361cb3"

  url "https://github.com/ptrinh/DotBar/releases/download/v#{version}/DotBar-#{version}.zip"
  name "DotBar"
  desc "Custom text and colored status dots for the macOS menu bar"
  homepage "https://github.com/ptrinh/DotBar"

  depends_on macos: :sonoma

  app "DotBar.app"

  zap trash: [
    "~/Library/Application Support/DotBar",
    "~/Library/Preferences/uk.trinh.DotBar.plist",
  ]
end
