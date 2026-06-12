cask "lightcutsoundz" do
  version :latest

  on_arm do
    url "https://github.com/light-cut-soundz/light-cut-soundz/releases/latest/download/LightCutSoundZ_aarch64.dmg"
    sha256 :no_check
  end

  on_intel do
    url "https://github.com/light-cut-soundz/light-cut-soundz/releases/latest/download/LightCutSoundZ_x64.dmg"
    sha256 :no_check
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
