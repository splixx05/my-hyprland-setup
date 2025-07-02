local hl = require("res.utils.highlight")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "BufferCurrent", { fg = hl.base, bg = hl.termcolor, bold = true })
set_hl(0, "BufferCurrentMod", { fg = hl.state, bg = hl.termcolor })
set_hl(0, "BufferVisible", { fg = hl.foreground, bg = hl.termcolor })
set_hl(0, "BufferInactive", { fg = hl.foreground, bg = hl.termcolor })
set_hl(0, "BufferInactiveMod", { fg = hl.quote, bg = hl.termcolor })
set_hl(0, "BufferTabpageFill", { fg = hl.base, bg = hl.termcolor })
set_hl(0, "BufferScrollArrow", { fg = hl.base, bg = hl.termcolor })

set_hl(0, "BufferCurrentIcon", { fg = hl.base, bg = "NONE", bold = true })
set_hl(0, "BufferVisibleIcon", { fg = hl.accent, bg = hl.termcolor })
set_hl(0, "BufferInactiveIcon", { fg = hl.accent, bg = hl.termcolor })

set_hl(0, "BufferCurrentHINT", { fg = hl.base, bg = hl.termcolor, bold = true })
set_hl(0, "BufferVisibleHINT", { fg = hl.accent, bg = hl.termcolor })
set_hl(0, "BufferInactiveHINT", { fg = hl.accent, bg = hl.termcolor })

set_hl(0, "BufferCurrentSign", { fg = hl.termcolor, bg = hl.termcolor })
set_hl(0, "BufferVisibleSing", { fg = hl.termcolor, bg = hl.termcolor })
set_hl(0, "BufferInactiveSing", { fg = hl.termcolor, bg = hl.termcolor })

set_hl(0, "BufferCurrentSignRight", { fg = hl.termcolor, bg = hl.termcolor })
set_hl(0, "BufferVisibleSingRight", { fg = hl.termcolor, bg = hl.termcolor })
set_hl(0, "BufferInactiveSingRight", { fg = hl.termcolor, bg = hl.termcolor })

set_hl(0, "BufferCurrentIndex", { fg = hl.base, bg = hl.termcolor })
set_hl(0, "BufferVisibleIndex", { fg = hl.accent, bg = hl.termcolor })
set_hl(0, "BufferInactiveIndex", { fg = hl.accent, bg = hl.termcolor })

set_hl(0, "BufferCurrentERROR", { fg = hl.error, bg = hl.termcolor })
set_hl(0, "BufferVisibleERROR", { fg = hl.accent, bg = hl.termcolor })
set_hl(0, "BufferInactiveERROR", { fg = hl.accent, bg = hl.termcolor })

set_hl(0, "BufferCurrentWARN", { fg = hl.warning, bg = hl.termcolor })
set_hl(0, "BufferVisibleWARN", { fg = hl.accent, bg = hl.termcolor })
set_hl(0, "BufferInactiveWARN", { fg = hl.accent, bg = hl.termcolor })

set_hl(0, "BufferCurrentINFO", { fg = hl.info, bg = hl.termcolor })
set_hl(0, "BufferVisibleINFO", { fg = hl.accent, bg = hl.termcolor })
set_hl(0, "BufferInactiveINFO", { fg = hl.accent, bg = hl.termcolor })
