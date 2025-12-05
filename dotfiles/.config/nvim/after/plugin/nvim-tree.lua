local c = require("res.utils.colors")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "NvimTreeRootFolder", { fg = c.prim.main, bg = "NONE", bold = true })
set_hl(0, "NvimTreeFolderName", { fg = c.fg.main, bg = "NONE" })
set_hl(0, "NvimTreeFolderIcon", { fg = c.prim.main, bg = "NONE" })
set_hl(0, "NvimTreeOpenedFolderName", { fg = c.fg.main, bg = "NONE", bold = true })
set_hl(0, "NvimTreeEmptyFolderName", { fg = c.tone.grey, bg = "NONE" })
