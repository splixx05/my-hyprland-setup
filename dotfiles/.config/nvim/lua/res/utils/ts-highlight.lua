local M = {}
local hl = require("res.utils.colorscheme")
local set_hl = vim.api.nvim_set_hl

M.setup = function()
  -- Variables
  set_hl(0, "@variable", { fg = hl.Variable })
  set_hl(0, "@variable.builtin", { fg = hl.Operator }) -- z.B. nil, true, false

  -- Fields / Properties
  set_hl(0, "@field", { fg = hl.Field })
  set_hl(0, "@property", { fg = hl.Field })

  -- Functions
  set_hl(0, "@function", { fg = hl.Function, bold = true })
  set_hl(0, "@function.builtin", { fg = hl.Function, italic = true })
  set_hl(0, "@function.call", { fg = hl.Function })
  set_hl(0, "@method", { fg = hl.Function })

  -- Keywords
  set_hl(0, "@keyword", { fg = hl.Keyword, bold = true })
  set_hl(0, "@keyword.function", { fg = hl.Keyword, italic = true })
  set_hl(0, "@keyword.return", { fg = hl.Keyword })

  -- Constants & Strings
  set_hl(0, "@constant", { fg = hl.Constant })
  set_hl(0, "@constant.builtin", { fg = hl.Special })
  set_hl(0, "@string", { fg = hl.String })
  set_hl(0, "@string.escape", { fg = hl.SpecialChar })

  -- Types
  set_hl(0, "@type", { fg = hl.Type })
  set_hl(0, "@type.builtin", { fg = hl.Structure })
  set_hl(0, "@type.definition", { fg = hl.Typedef })

  -- Operators & Punctuation
  set_hl(0, "@operator", { fg = hl.Operator })
  set_hl(0, "@punctuation.delimiter", { fg = hl.Delimiter })
  set_hl(0, "@punctuation.bracket", { fg = hl.SpecialChar })
  set_hl(0, "@punctuation.special", { fg = hl.SpecialChar })

  -- Comments
  set_hl(0, "@comment", { fg = hl.Comment, italic = true })
  set_hl(0, "@todo", { fg = hl.Todo, bold = true })
end

return M
