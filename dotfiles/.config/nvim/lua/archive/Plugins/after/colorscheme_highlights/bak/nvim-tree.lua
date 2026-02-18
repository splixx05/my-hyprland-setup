local hl = require("res.utils.colorscheme")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "NvimTreeRootFolder", { fg = hl.Accent, bg = "NONE", bold = true })
set_hl(0, "NvimTreeFolderName", { fg = hl.Foreground, bg = "NONE" })
set_hl(0, "NvimTreeFolderIcon", { fg = hl.Accent, bg = "NONE" })
set_hl(0, "NvimTreeOpenedFolderName", { fg = hl.Foreground, bg = "NONE", bold = true })
set_hl(0, "NvimTreeEmptyFolderName", { fg = hl.Comment, bg = "NONE" })
