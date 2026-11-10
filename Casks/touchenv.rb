cask "touchenv" do
  version "1.5.0"
  sha256 "28960bc8fafe1a74811f4cd5d259b1a4d8c99da1c98bb039a34a300924cd4807"

  url "https://github.com/ptrinh/touch-env/releases/download/v#{version}/touchenv-#{version}-macos.zip"
  name "touchenv"
  desc "Keep API keys in the Keychain, every read behind Touch ID"
  homepage "https://github.com/ptrinh/touch-env"

  depends_on macos: :ventura

  app "touchenv.app"
  binary "#{appdir}/touchenv.app/Contents/MacOS/touchenv"
end
