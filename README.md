# LightCutSoundz Homebrew Tap

Official Homebrew tap for [**LightCutSoundz**](https://light-cut-soundz.github.io/light-cut-soundz/) — trim, fade, normalize and filter your audio, then export it.

## Install

```bash
brew install --cask light-cut-soundz/tap/light-cut-soundz
```

Or use the project's one-line installer, which runs the same `brew install` on macOS and installs
the `.deb` / `.AppImage` on Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/light-cut-soundz/light-cut-soundz/main/install.sh | bash
```

## Upgrade

```bash
brew upgrade --cask light-cut-soundz
```

## Uninstall

```bash
brew uninstall --cask light-cut-soundz
brew untap light-cut-soundz/tap
```

Add `--zap` to also remove settings, caches and application data:

```bash
brew uninstall --zap --cask light-cut-soundz
```

## Requirements

- **macOS 11 Big Sur or later**, Apple Silicon only (M1/M2/M3/M4).
- Nothing else — WAV, MP3, FLAC and OGG export all work out of the box. The app bundles
  its own `ffmpeg` as a Tauri sidecar, so you do not need one on your `PATH`.

The app is not signed with an Apple Developer certificate. If macOS refuses to open it,
clear the quarantine flag once:

```bash
xattr -dr com.apple.quarantine "/Applications/LightCutSoundz.app"
```

## Contents

| Cask | Description |
|------|-------------|
| [`light-cut-soundz`](Casks/light-cut-soundz.rb) | LightCutSoundz desktop app (arm64 DMG) |

## How this tap is updated

Nothing here is edited by hand. Tagging a release in the
[main repository](https://github.com/light-cut-soundz/light-cut-soundz) triggers its
`ship-impl` workflow, which builds the DMG, computes its SHA-256 and bumps
`version` and `sha256` in `Casks/light-cut-soundz.rb`.

The cask body itself is the source of truth and lives only here — the workflow rewrites
those two fields and nothing else, so an edit made in this repository is never
overwritten by the next release. Before pushing, the workflow audits and actually
installs the candidate cask on a macOS runner; a cask that fails to install never
reaches this repository.

## Issues

Report problems on the [main issue tracker](https://github.com/light-cut-soundz/light-cut-soundz/issues).
