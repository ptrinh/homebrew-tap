cask "touchenv" do
  version "1.1.0"
  sha256 "adbdd9f4b0fa0ca77f6b6bf0dcdc15139d9865aed1a728da383a64dd5e76a846"

  url "https://github.com/ptrinh/touch-env/releases/download/v#{version}/touchenv-#{version}-macos.zip"
  name "touchenv"
  desc "Keep API keys in the Keychain, every read behind Touch ID"
  homepage "https://github.com/ptrinh/touch-env"

  depends_on macos: :ventura

  app "touchenv.app"
  binary "#{appdir}/touchenv.app/Contents/MacOS/touchenv"
end
