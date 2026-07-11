cask "lightcutsoundz" do
  version "0.1.6"

  on_arm do
    url "https://github.com/light-cut-soundz/light-cut-soundz/releases/download/v#{version}/LightCutSoundZ_#{version}_aarch64.dmg"
    sha256 "b3df5cf42a723800583ff3ffafc762e32986b620886cc9fb85d7aed784c776d9"
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
