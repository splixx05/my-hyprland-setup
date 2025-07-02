local hl = require("res.utils.highlight")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "NvimTreeRootFolder", { fg = hl.base, bg = "NONE", bold = true })
set_hl(0, "NvimTreeFolderName", { fg = hl.foreground, bg = "NONE" })
set_hl(0, "NvimTreeFolderIcon", { fg = hl.base, bg = "NONE" })
set_hl(0, "NvimTreeOpenedFolderName", { fg = hl.fnc, bg = "NONE", bold = true })
set_hl(0, "NvimTreeEmptyFolderName", { fg = hl.comment, bg = "NONE" })
set_hl(0, "NvimTreeSymlink", { fg = hl.quote, bg = "NONE" })
