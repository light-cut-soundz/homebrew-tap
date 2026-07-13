cask "lightcutsoundz" do
  version "0.1.8"

  on_arm do
    url "https://github.com/light-cut-soundz/light-cut-soundz/releases/download/v#{version}/LightCutSoundZ_#{version}_aarch64.dmg"
    sha256 "4f57db3b3fc13166d63cbfca34475580ed4dfd8a6d0cdde6e2bebc12daa03e58"
  end

  on_intel do
    url "https://github.com/light-cut-soundz/light-cut-soundz/releases/download/v#{version}/LightCutSoundZ_#{version}_x64.dmg"
    sha256 ""
  end

  name "LightCutSoundZ"
  desc "Fast, minimal desktop audio editor"
  homepage "https://light-cut-soundz.github.io/light-cut-soundz/"

  app "LightCutSoundZ.app"

  zap trash: [
    "~/Library/Application Support/dev.lightcutsoundz",
    "~/Library/Preferences/dev.lightcutsoundz.plist",
    "~/Library/Saved Application State/dev.lightcutsoundz.savedState",
  ]
end
