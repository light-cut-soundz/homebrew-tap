cask "light-cut-soundz" do
  version "1.0.0"
  sha256 "394974395a17ff1f0fdaed2b457e76de23cd7b90fc4e39c56c53871c326d43a5"

  url "https://github.com/light-cut-soundz/light-cut-soundz/releases/download/v#{version}/LightCutSoundz_aarch64.app.tar.gz"
  name "LightCutSoundz"
  desc "Fast, minimal desktop audio editor"
  homepage "https://github.com/light-cut-soundz/light-cut-soundz"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app ships Tauri's updater and replaces itself in place.
  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

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
