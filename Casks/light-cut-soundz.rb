cask "light-cut-soundz" do
  version "1.0.0"
  sha256 "461ee634b188d96de3ee5ed72d5cea39374a06534bdaea4bd2c14d64eeda8e4b"

  url "https://github.com/light-cut-soundz/light-cut-soundz/releases/download/v#{version}/LightCutSoundz_aarch64.app.tar.gz"
  name "LightCutSoundz"
  desc "Fast, minimal desktop audio editor"
  homepage "https://light-cut-soundz.github.io/light-cut-soundz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app ships Tauri's updater and replaces itself in place.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "LightCutSoundz.app"

  zap trash: [
    "~/Library/Application Support/dev.lightcutsoundz",
    "~/Library/Caches/dev.lightcutsoundz",
    "~/Library/Preferences/dev.lightcutsoundz.plist",
    "~/Library/Saved Application State/dev.lightcutsoundz.savedState",
    "~/Library/WebKit/dev.lightcutsoundz",
  ]

  caveats <<~EOS
    LightCutSoundz is not signed or notarized by Apple. On first launch macOS may
    refuse to open it. Remove the quarantine attribute once:

      xattr -dr com.apple.quarantine "/Applications/LightCutSoundz.app"
  EOS
end
