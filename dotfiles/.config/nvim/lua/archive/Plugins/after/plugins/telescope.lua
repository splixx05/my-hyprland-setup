local hl = require("res.utils.highlight")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "TelescopeBorder", { fg = hl.foreground, bg = hl.termcolor, bold = true })
set_hl(0, "TelescopeSelectionCaret", { fg = hl.base, bg = hl.termcolor, bold = true })
set_hl(0, "TelescopeSelection", { fg = hl.base, bg = hl.termcolor, bold = true })
set_hl(0, "TelescopeMatching", { fg = hl.info, bg = hl.termcolor, bold = true })
