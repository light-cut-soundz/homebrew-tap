cask "lightcutsoundz" do
  version "0.1.3"

  on_arm do
    url "https://github.com/light-cut-soundz/light-cut-soundz/releases/download/v#{version}/LightCutSoundZ_#{version}_aarch64.dmg"
    sha256 "1191cb3c17ce07b1e8f22394972fc252b7f87bdf331557d980d1742a392bd675"
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
