---
id: yazi_stable
aliases: []
tags: []
---

## Last yazi stable version

last stable version --> yazi-25.5.31-2-x86_64.pkg.tar.zst

## Downgrade yazi to this version:

```
sudo pacman -U /var/cache/pacman/pkg/yazi-25.5.31-2-x86_64.pkg.tar.zst
```

> [!warning] Don't forget!!
> add yazi to PkgIgnore to /etc/pacman.conf - otherwise yazi will update to another version!
> either update yazi pkgs until you know, if it has breaking changes!

## Plugins from yazi-rs:

This Plugins will always need the newest version of yazi, so you may have to config them to run:

yazi-rs/plugins:full-border
yazi-rs/plugins:piper
yazi-rs/plugins:git
yazi-rs/plugins:chmod

They are not installed via ya pkg-mgr, and are mantained manually

## Pkg that are stable for v25.5.31-2

This Plugins work on this version without config:

```
[[plugin.deps]]
use = "imsi32/yatline"
rev = "88bd1c5"
hash = "981acbe9b758b1af3a8154c932bb936d"

[[plugin.deps]]
use = "blackdaemon/yatline-tab-path"
rev = "101fe7c"
hash = "b58a6786383df06dc16fc6dbd1876d31"

[[plugin.deps]]
use = "imsi32/yatline-githead"
rev = "f8f969e"
hash = "4d441b38138ce6492a4e10fa349fd65"

[[plugin.deps]]
use = "lpanebr/yazi-plugins:yatline-symlink"
rev = "ca18a2c"
hash = "386df6fbcd34b29774ab171b642e91f2"

[[plugin.deps]]
use = "TD-Sky/sudo"
rev = "86205aa"
hash = "9628b660afb192d32f2ea5f6634d3e72"

[[plugin.deps]]
use = "orhnk/system-clipboard"
rev = "888026c"
hash = "9f82a544335a53d79e87ea315746caaa"

[[plugin.deps]]
use = "grappas/wl-clipboard"
rev = "e9a38e4"
hash = "487c8c8ec5028db6de2a901a31dd74c2"

[[plugin.deps]]
use = "AnirudhG07/plugins-yazi:copy-file-contents"
rev = "71545f4"
hash = "f8530ee84fee95dbcc26bb1d8d8019c7"

[[plugin.deps]]
use = "MasouShizuka/close-and-restore-tab"
rev = "5047217"
hash = "bb24648b1f96f1cef8c1543742189aad"


[[plugin.deps]]
use = "dedukun/bookmarks"
rev = "9ef1254"
hash = "92fbb5483657fa7976cdf4e0104e18e0"

[[plugin.deps]]
use = "Lil-Dank/lazygit"
rev = "0e56060"
hash = "ab2e66065a94cca4886b303518e44bd8"

[flavor]
deps = []

```
