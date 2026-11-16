cask "touchenv" do
  version "1.9.1"
  sha256 "cfb87e44ef65df7d728dde3a4485135e8a07090433b4218ee38924a079c72042"

  url "https://github.com/ptrinh/touch-env/releases/download/v#{version}/touchenv-#{version}-macos.zip"
  name "touchenv"
  desc "Keep API keys in the Keychain, every read behind Touch ID"
  homepage "https://github.com/ptrinh/touch-env"

  depends_on macos: :ventura

  app "touchenv.app"
  binary "#{appdir}/touchenv.app/Contents/MacOS/touchenv"
end
