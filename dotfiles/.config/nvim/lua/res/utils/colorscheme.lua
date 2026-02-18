local M = {}

-- =========================================================
-- 🎨 PALETTE SECTION —
-- =========================================================
local c = require("res.utils.colors")

-- =========================================================
-- 🧠 Helper
-- =========================================================
local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- =========================================================
-- 🎨 HIGHLIGHTS SECTION —
-- =========================================================
local highlights = {
  -- UI / Editor
  Normal = { fg = c.fg.main, bg = c.bg.main },
  NormalNC = { fg = c.fg.main, bg = c.bg.main },
  Cursor = { fg = c.prim.main, bg = c.bg.main },
  CursorLine = { bg = c.bg.slate },
  CursorLineNr = { fg = c.fg.acc, bold = true },
  LineNr = { fg = c.fg.main },
  Visual = { bg = c.bg.slate },
  SignColumn = {},
  ColorColumn = {},
  StatusLine = {},
  StatusLineNC = {},
  StatusLineTerm = {},
  StatusLineTermNC = {},
  VertSplit = {},

  -- Comments
  Comment = { fg = c.tone.grey, italic = true },
  Todo = { fg = c.acc.green, bold = true },

  -- Constants
  Constant = { fg = c.acc.yellow },
  String = { fg = c.fg.main },
  Character = { fg = c.acc.blue },
  Number = { fg = c.acc.orange },
  Boolean = { fg = c.prim.deep },
  Float = { fg = c.prim.main, bg = "NONE" },

  -- Identifiers
  Identifier = { fg = c.prim.deep },
  Function = { fg = c.prim.main, bold = true },
  Builtin = { fg = c.prim.deep },
  Search = { fg = c.acc.magenta, bg = "NONE" },
  IncSearch = { fg = c.prim.deep },
  MatchParen = { fg = c.acc.green },

  -- Statements
  Statement = { fg = c.acc.magenta },
  Conditional = { fg = c.acc.magenta },
  Repeat = { fg = c.acc.magenta },
  Label = { fg = c.prim.high },
  Operator = { fg = c.acc.violet },
  Keyword = { fg = c.acc.violet, italic = true },
  Exception = { fg = c.acc.red },

  -- Preprocessor
  PreProc = { fg = c.acc.blue },
  Include = { fg = c.acc.magenta },
  Define = { fg = c.acc.blue },
  Macro = { fg = c.acc.blue },
  Error = { fg = c.acc.red },
  NormalFloat = { fg = c.prim.main, bg = "NONE" },
  Floatborder = { fg = c.prim.main, bg = "NONE" },

  -- Types
  Type = { fg = c.acc.violet },
  StorageClass = { fg = c.acc.blue },
  Structure = { fg = c.acc.cyan },
  Typedef = { fg = c.acc.red },

  -- Specials
  Special = { fg = c.prim.deep },
  SpecialChar = { fg = c.prim.high },
  Tag = { fg = c.acc.magenta },
  Delimiter = { fg = c.tone.grey },
  SpecialComment = { fg = c.fg.acc },
  Debug = { fg = c.acc.red },

  -- Diagnostics
  DiagnosticError = { fg = c.acc.red },
  DiagnosticWarn = { fg = c.acc.orange },
  DiagnosticInfo = { fg = c.acc.blue },
  DiagnosticHint = { fg = c.acc.cyan },

  -- Diff
  DiffAdd = { bg = c.acc.green },
  DiffDelete = { bg = c.acc.red },
  DiffChange = { bg = c.acc.blue },

  -- LSP
  LspReferenceText = { bg = c.bg.slate },
  LspReferenceRead = { bg = c.bg.slate },
  LspReferenceWrite = { bg = c.bg.slate },

  -- Treesitter ------------------------------

  -- Operators, Punctuation & Types
  ["@number"] = { link = "Number" },
  ["@type"] = { link = "Type" },
  ["@type.builtin"] = { link = "Type" },
  ["@type.definition"] = { link = "Type" },
  ["@punctuation"] = { link = "Delimiter" },
  ["@operator"] = { link = "Operator" },
  ["@punctuation.delimiter"] = { link = "Delimiter" },
  ["@punctuation.bracket"] = { fg = c.acc.green },
  ["@punctuation.special"] = { fg = c.acc.green },

  -- Variables
  ["@variable.builtin"] = { fg = c.fg.acc },
  ["@variable"] = { fg = c.fg.main },

  -- Fields / Properties
  ["@field"] = { fg = c.prim.deep },
  ["@property"] = { fg = c.acc.cyan },

  -- Functions
  ["@function"] = { link = "Function" },
  ["@function.builtin"] = { link = "Builtin" },
  ["@function.call"] = { link = "Function" },
  ["@method"] = { link = "Builtin" },

  -- Keywords
  ["@keyword"] = { link = "Keyword" },
  ["@keyword.function"] = { link = "Keyword" },
  ["@keyword.return"] = { link = "Keyword" },

  -- Constants & Strings
  ["@constant"] = { link = "Constant" },
  ["@constant.builtin"] = { link = "Constant" },
  ["@string"] = { link = "String" },
  ["@string.escape"] = { link = "String" },

  -- Comments
  ["@comment"] = { link = "Comment" },
  ["@todo"] = { link = "Comment" },
}

-- =========================================================
-- 🚀 SETUP
-- =========================================================
function M.setup()
  for group, opts in pairs(highlights) do
    hi(group, opts)
  end
end

return M
