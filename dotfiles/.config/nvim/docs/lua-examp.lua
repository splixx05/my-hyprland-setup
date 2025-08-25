-- res/utils/treesitter_highlight.lua
local M = {}
local hl = require("res.utils.highlight")
local set_hl = vim.api.nvim_set_hl

M.setup = function()
  ---
  -- Variablen & Felder
  ---

  set_hl(0, "@variable", { fg = hl.Variable }) -- normale Variablen
  set_hl(0, "@variable.builtin", { fg = hl.Special }) -- nil, true, false
  set_hl(0, "@field", { fg = hl.Field }) -- hl.Foreground
  set_hl(0, "@property", { fg = hl.Property }) -- fg = ..., bg = ...

  ---
  -- Funktionen & Methoden
  ---

  set_hl(0, "@function", { fg = hl.Function })
  set_hl(0, "@function.builtin", { fg = hl.SpecialFunc }) -- pairs, ipairs, require
  set_hl(0, "@function.call", { fg = hl.Function })
  set_hl(0, "@method", { fg = hl.Function })

  ---
  -- Schlüsselwörter
  ---

  set_hl(0, "@keyword", { fg = hl.Keyword, bold = true })
  set_hl(0, "@keyword.function", { fg = hl.Keyword, italic = true })
  set_hl(0, "@keyword.return", { fg = hl.Keyword })
  set_hl(0, "@keyword.operator", { fg = hl.Operator })

  ---
  -- Konstanten & Literale
  ---

  set_hl(0, "@constant", { fg = hl.Constant })
  set_hl(0, "@constant.builtin", { fg = hl.Special }) -- vim, math, os
  set_hl(0, "@string", { fg = hl.String })
  set_hl(0, "@string.escape", { fg = hl.SpecialChar })
  set_hl(0, "@number", { fg = hl.Number })
  set_hl(0, "@boolean", { fg = hl.Boolean })

  ---
  -- Typen
  ---

  set_hl(0, "@type", { fg = hl.Type })
  set_hl(0, "@type.builtin", { fg = hl.Special })
  set_hl(0, "@type.definition", { fg = hl.Type })

  ---
  -- Operatoren & Satzzeichen
  ---

  set_hl(0, "@operator", { fg = hl.Operator })
  set_hl(0, "@punctuation.delimiter", { fg = hl.SpecialChar })
  set_hl(0, "@punctuation.bracket", { fg = hl.SpecialChar })
  set_hl(0, "@punctuation.special", { fg = hl.SpecialChar })

  ---
  -- Kommentare
  ---

  set_hl(0, "@comment", { fg = hl.Comment, italic = true })
  set_hl(0, "@todo", { fg = hl.Todo, bold = true })

  ---
  -- Fehler
  ---

  set_hl(0, "@error", { fg = hl.Error, bold = true })
end

return M
