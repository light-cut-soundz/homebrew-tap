cask "lightcutsoundz" do
  version "0.1.4"

  on_arm do
    url "https://github.com/light-cut-soundz/light-cut-soundz/releases/download/v#{version}/LightCutSoundZ_#{version}_aarch64.dmg"
    sha256 "bb8745eaadfd4ef4c6815f9d3fff22767993f6b13c9515cb1b43ceb4edec1173"
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
