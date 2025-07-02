local hl = require("res.utils.highlight")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "Normal", { link = "NormalFloat" })
set_hl(0, "FloatBorder", { link = "FloatBorder" })
set_hl(0, "SelectionCaret", { fg = hl.Accent, bg = hl.Background, bold = true })
set_hl(0, "Selection", { fg = hl.Accent, bg = hl.Background, bold = true })
set_hl(0, "Matching", { fg = hl.Special, bg = hl.Background, bold = true })
