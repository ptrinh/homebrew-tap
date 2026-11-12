cask "touchenv" do
  version "1.7.2"
  sha256 "eca50d20085f302bebff148e69fcf68fbf56c87ed49357d69ba2c7277f34407f"

  url "https://github.com/ptrinh/touch-env/releases/download/v#{version}/touchenv-#{version}-macos.zip"
  name "touchenv"
  desc "Keep API keys in the Keychain, every read behind Touch ID"
  homepage "https://github.com/ptrinh/touch-env"

  depends_on macos: :ventura

  app "touchenv.app"
  binary "#{appdir}/touchenv.app/Contents/MacOS/touchenv"
end
