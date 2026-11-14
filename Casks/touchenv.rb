cask "touchenv" do
  version "1.8.2"
  sha256 "bd8a38117986af79f5c5f2cdf2bb9c78c9cc257a2a828cd0ba7bd15c0c9e38ce"

  url "https://github.com/ptrinh/touch-env/releases/download/v#{version}/touchenv-#{version}-macos.zip"
  name "touchenv"
  desc "Keep API keys in the Keychain, every read behind Touch ID"
  homepage "https://github.com/ptrinh/touch-env"

  depends_on macos: :ventura

  app "touchenv.app"
  binary "#{appdir}/touchenv.app/Contents/MacOS/touchenv"
end
