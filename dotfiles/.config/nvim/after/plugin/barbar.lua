local c = require("res.utils.colors")
local set = vim.api.nvim_set_hl

-- Current buffer
set(0, "BufferCurrent", { fg = c.fg.term, bg = c.bg.term, bold = true })
set(0, "BufferCurrentMod", { fg = c.acc.magenta, bg = c.bg.term })
set(0, "BufferCurrentSign", { fg = c.bg.term, bg = c.bg.term })
set(0, "BufferCurrentTarget", { fg = c.acc.red, bg = c.bg.term })

-- Visible buffer
set(0, "BufferVisible", { fg = c.tone.grey, bg = c.bg.term })
set(0, "BufferVisibleMod", { fg = c.acc.magenta, bg = c.bg.term })
set(0, "BufferVisibleSign", { fg = c.bg.term, bg = c.bg.term })
set(0, "BufferVisibleTarget", { fg = c.acc.red, bg = c.bg.term })

-- Inactive buffer
set(0, "BufferInactive", { fg = c.tone.grey, bg = c.bg.term })
set(0, "BufferInactiveMod", { fg = c.tone.grey, bg = c.bg.term })
set(0, "BufferInactiveSign", { fg = c.bg.term, bg = c.bg.term })
set(0, "BufferInactiveTarget", { fg = c.acc.red, bg = c.bg.term })

-- Tabline
set(0, "BufferTabpageFill", { fg = c.bg.term, bg = c.bg.term })
set(0, "BufferTabpages", { fg = c.bg.term, bg = c.bg.term })

-- Icons
set(0, "BufferCurrentIcon", { fg = c.fg.hi, bg = c.bg.term })
set(0, "BufferVisibleIcon", { fg = c.fg.acc, bg = c.bg.term })
set(0, "BufferInactiveIcon", { fg = c.tone.grey, bg = c.bg.term })

-- Index numbers
set(0, "BufferCurrentIndex", { fg = c.prim.term, bg = c.bg.term })
set(0, "BufferVisibleIndex", { fg = c.tone.grey, bg = c.bg.term })
set(0, "BufferInactiveIndex", { fg = c.tone.grey, bg = c.bg.term })

-- Errors / Warnings / Infos
set(0, "BufferCurrentERROR", { fg = c.acc.red, bg = c.bg.term })
set(0, "BufferCurrentWARN", { fg = c.acc.orange, bg = c.bg.term })
set(0, "BufferCurrentINFO", { fg = c.acc.green, bg = c.bg.term })
set(0, "BufferCurrentHINT", { fg = c.acc.cyan, bg = c.bg.term })

set(0, "BufferVisibleERROR", { fg = c.acc.red, bg = c.bg.term })
set(0, "BufferVisibleWARN", { fg = c.acc.orange, bg = c.bg.term })
set(0, "BufferVisibleINFO", { fg = c.acc.green, bg = c.bg.term })
set(0, "BufferVisibleHINT", { fg = c.acc.cyan, bg = c.bg.term })

set(0, "BufferInactiveERROR", { fg = c.acc.red, bg = c.bg.term })
set(0, "BufferInactiveWARN", { fg = c.acc.orange, bg = c.bg.term })
set(0, "BufferInactiveINFO", { fg = c.acc.green, bg = c.bg.term })
set(0, "BufferInactiveHINT", { fg = c.acc.cyan, bg = c.bg.term })
