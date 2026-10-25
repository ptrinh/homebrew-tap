cask "touchenv" do
  version "1.2.0"
  sha256 "2acf6365e99a003def88b4391bdf91abfa9940f240e9f0156d512f8b4a0e11d2"

  url "https://github.com/ptrinh/touch-env/releases/download/v#{version}/touchenv-#{version}-macos.zip"
  name "touchenv"
  desc "Keep API keys in the Keychain, every read behind Touch ID"
  homepage "https://github.com/ptrinh/touch-env"

  depends_on macos: :ventura

  app "touchenv.app"
  binary "#{appdir}/touchenv.app/Contents/MacOS/touchenv"
end
