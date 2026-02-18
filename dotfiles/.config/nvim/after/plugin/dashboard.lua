local c = require("res.utils.colors")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "SnacksDashboardHeader", { fg = "#5531b1", bg = "NONE" })
set_hl(0, "SnacksDashboardKey", { fg = c.acc.violet, bg = "NONE" })
set_hl(0, "SnacksDashboardIcon", { fg = c.acc.violet, bg = "NONE" })
set_hl(0, "SnacksDashboardDesc", { fg = c.prim.main, bg = "NONE" })
set_hl(0, "SnacksDashboardDir", { fg = c.bg.slate, bg = "NONE" })
set_hl(0, "SnacksDashboardFile", { fg = c.prim.main, bg = "NONE" })
