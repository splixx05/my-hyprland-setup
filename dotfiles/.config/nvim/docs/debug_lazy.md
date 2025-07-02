---
id: debug_lazy
aliases: []
tags: []
---

**Benötigte Pakete für nvim**

**ripgrep**
**fzf**

### path to lazy.nvim

--> ==~/.local/share/nvim/lazy/lazy.nvim==

### install lazy.nvim

git clone https://github.com/folke/lazy.nvim.git --branch=stable ~/.local/share/nvim/lazy/lazy.nvim >

### check logfiles

**nvim --log-level=trace**

### path to logfiles

~/.local/state/nvim/log

### check Lazy.nvim isolated

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
vim.fn.system({
"git",
"clone",
"--filter=blob:none",
"https://github.com/folke/lazy.nvim.git",
"--branch=stable",
lazypath,
})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({}) >

### Zusätzliche Lua-Module

**luarocks**

pkg-manager luarocks install modulname
