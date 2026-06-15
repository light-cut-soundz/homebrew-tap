cask "lightcutsoundz" do
  version "0.1.1"

  on_arm do
    url "https://github.com/light-cut-soundz/light-cut-soundz/releases/download/v#{version}/LightCutSoundZ_#{version}_aarch64.dmg"
    sha256 "4f07654e35f47d9135542e32376187f0f155519a3a521abf928af41d38d9016f"
  end

  on_intel do
    url "https://github.com/light-cut-soundz/light-cut-soundz/releases/download/v#{version}/LightCutSoundZ_#{version}_x64.dmg"
    sha256 "38fa3f3d72a5a9e3c67b15a67da8761019cba70f9061d0a6a7c24726833d4516"
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
