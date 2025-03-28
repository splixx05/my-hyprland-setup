---
id: themify
aliases: []
tags:
  - theme
---

# Themeswitcher

_That is a themeswitcher, that allows to easy switch or install themes._
_I didn't need yet, so i safed it in this folder_

return {
"lmantw/themify.nvim",
lazy = false,
priority = 999,
config = function()
require("themify").setup({
-- Your list of colorschemes.
"folke/tokyonight.nvim",
"sho-87/kanagawa-paper.nvim",
{
"comfysage/evergarden",
branch = "mega",
},
-- Built-in colorschemes are also supported.
-- (Also works with any colorschemes that are installed via other plugin manager, just make sure the colorscheme is loaded before Themify is loaded.)
"default",
})
end,
}
