local c = require("res.utils.colors")
local set_hl = vim.api.nvim_set_hl
local bg = c.bg.main

set_hl(0, "BufferCurrent", { fg = c.prim.main, bg = c.bg.main, bold = true })
set_hl(0, "BufferCurrentMod", { fg = c.acc.magenta, bg = c.bg.main })
set_hl(0, "BufferVisible", { fg = c.fg.main, bg = c.bg.main })
set_hl(0, "BufferVisibleMod", { fg = c.acc.magenta, bg = c.bg.main })
set_hl(0, "BufferInactive", { fg = c.bg.slate, bg = c.bg.main })
set_hl(0, "BufferInactiveMod", { fg = c.acc.magenta, bg = c.bg.main })
set_hl(0, "BufferTabpageFill", { fg = c.bg.main, bg = c.bg.main })
set_hl(0, "BufferScrollArrow", { fg = c.prim.main, bg = c.bg.main })

set_hl(0, "BufferCurrentIcon", { fg = c.prim.main, bg = c.bg.main, bold = true })
set_hl(0, "BufferVisibleIcon", { fg = c.fg.main, bg = c.bg.main })
set_hl(0, "BufferInactiveIcon", { fg = c.bg.slate, bg = c.bg.main })

set_hl(0, "BufferCurrentHINT", { fg = c.prim.main, bg = c.bg.main, bold = true })
set_hl(0, "BufferVisibleHINT", { fg = c.fg.main, bg = c.bg.main })
set_hl(0, "BufferInactiveHINT", { fg = c.bg.slate, bg = c.bg.main })

set_hl(0, "BufferCurrentIndex", { fg = c.prim.main, bg = c.bg.main })
set_hl(0, "BufferVisibleIndex", { fg = c.fg.main, bg = c.bg.main })
set_hl(0, "BufferInactiveIndex", { fg = c.bg.slate, bg = c.bg.main })

set_hl(0, "BufferCurrentERROR", { fg = c.acc.red, bg = c.bg.main })
set_hl(0, "BufferVisibleERROR", { fg = c.fg.main, bg = c.bg.main })
set_hl(0, "BufferInactiveERROR", { fg = c.acc.red, bg = c.bg.main })

set_hl(0, "BufferCurrentWARN", { fg = c.acc.orange, bg = c.bg.main })
set_hl(0, "BufferVisibleWARN", { fg = c.fg.main, bg = c.bg.main })
set_hl(0, "BufferInactiveWARN", { fg = c.fg.main, bg = c.bg.main })

set_hl(0, "BufferCurrentINFO", { fg = c.spec.green, bg = c.bg.main })
set_hl(0, "BufferVisibleINFO", { fg = c.fg.main, bg = c.bg.main })
set_hl(0, "BufferInactiveINFO", { fg = c.fg.main, bg = c.bg.main })

set_hl(0, "BufferCurrentTabLine", { fg = bg, bg = bg })
set_hl(0, "BufferVisiblTabLineSel", { fg = bg, bg = bg })
set_hl(0, "BufferInactiveTabLineFill", { fg = bg, bg = bg })

for _, g in ipairs({
  -- Signs
  "BufferCurrentSign",
  "BufferVisibleSign",
  "BufferInactiveSign",
  "BufferCurrentSignRight",
  "BufferVisibleSignRight",
  "BufferInactiveSignRight",

  -- Separators
  "BufferCurrentSeparator",
  "BufferVisibleSeparator",
  "BufferInactiveSeparator",
}) do
  set_hl(0, g, { fg = bg, bg = bg })
end
