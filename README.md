# homebrew-tap

Homebrew tap for [LightCutSoundz](https://github.com/light-cut-soundz/light-cut-soundz).

## Install

```bash
brew install --cask light-cut-soundz/tap/light-cut-soundz
```

## Update

```bash
brew update
brew upgrade --cask light-cut-soundz
```

## Uninstall

```bash
brew uninstall --cask light-cut-soundz
brew untap light-cut-soundz/tap
```

Add `--zap` to `brew uninstall` to also remove the app's settings and caches.

## About unsigned builds

LightCutSoundz is not signed or notarized by Apple. If macOS refuses to open it on first launch, remove the quarantine attribute once:

```bash
xattr -dr com.apple.quarantine "/Applications/LightCutSoundz.app"
```

## License

MIT — see [LICENSE](LICENSE).
