local c = require("res.utils.colors")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "Normal", { fg = c.prim.main, bg = "NONE" })
set_hl(0, "Border", { fg = c.prim.main, bg = "NONE" })
set_hl(0, "SelectionCaret", { fg = c.prim.main, bg = c.bg.main, bold = true })
set_hl(0, "Selection", { fg = c.prim.main, bg = c.bg.main, bold = true })
set_hl(0, "Matching", { fg = c.spec.green, bg = c.bg.main, bold = true })
