local M = {}
local hl = require("res.utils.colorscheme")
local set_hl = vim.api.nvim_set_hl

M.setup = function()
  set_hl(0, "Normal", { fg = hl.Foreground })
  set_hl(0, "NormalNC", { fg = hl.Foreground })
  set_hl(0, "Variables", { fg = hl.Character })
  set_hl(0, "Comment", { fg = hl.Comment, italic = true })
  set_hl(0, "Constant", { fg = hl.Constant })
  set_hl(0, "String", { fg = hl.String })
  set_hl(0, "Label", { fg = hl.Label })
  set_hl(0, "Function", { fg = hl.Function, bold = true })
  set_hl(0, "Keyword", { fg = hl.Keyword, bold = true })
  set_hl(0, "Builtin", { fg = hl.Keyword, bold = true })
  set_hl(0, "Identifier", { fg = hl.Identifier })
  set_hl(0, "Statement", { fg = hl.Statement })
  set_hl(0, "Type", { fg = hl.Type })
  set_hl(0, "Todo", { fg = hl.Todo })
  set_hl(0, "Error", { fg = hl.Error, bold = true })
  set_hl(0, "Cursor", { fg = hl.Cursor })
  set_hl(0, "Visual", { fg = hl.CursorForeground, bg = hl.Visual })
  set_hl(0, "LineNr", { fg = hl.LineNr })
  set_hl(0, "CursorLineNr", { fg = hl.CursorLineNr })
  set_hl(0, "NormalFloat", { fg = hl.Float })
  set_hl(0, "Floatboarder", { fg = hl.Boarder })
  set_hl(0, "Search", { fg = hl.Special })
  set_hl(0, "IncSearch", { fg = hl.Special })
  set_hl(0, "MatchParen", { fg = hl.SpecialChar })
  set_hl(0, "StatusLineTerm", { fg = hl.Foreground })
  set_hl(0, "StatusLineTermNC", { fg = hl.Foreground })

  -- Treesitter-Overrides
  set_hl(0, "@variable", { fg = hl.Keyword })
  set_hl(0, "@property", { fg = hl.Include })
end
return M
