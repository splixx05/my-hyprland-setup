local hl = {
  -- Main colors
  Normal = { fg = "#7898C7", bg = "#131A24" },
  Cursor = { fg = "#131A24", bg = "#00B7EB" },
  Visual = { bg = "#1C2533" },
  CursorLine = { bg = "#1C2533" },
  CursorLineNr = { fg = "#FFD580", bg = "#1C2533" },
  LineNr = { fg = "#3A3E52" },

  -- Comments
  Comment = { fg = "#5C6773", style = "italic" },
  Todo = { fg = "#FFD580", bg = "#1c1e28", style = "bold,italic" },

  -- Constants
  Constant = { fg = "#FFD580" },
  String = { fg = "#8CCF7E" },
  Character = { fg = "#A7F3A1" },
  Number = { fg = "#FFAA66" },
  Boolean = { fg = "#FF6B6B" },
  Float = { fg = "#FFD580" },

  -- Identifier & functions
  Identifier = { fg = "#5CAEFF" },
  Function = { fg = "#A0CFFF" },

  -- Statements
  Statement = { fg = "#CBA6F7" },
  Conditional = { fg = "#CBA6F7" },
  Repeat = { fg = "#CBA6F7" },
  Label = { fg = "#E4C9FF" },
  Operator = { fg = "#A099FF" },
  Keyword = { fg = "#A099FF" },
  Exception = { fg = "#FF6B6B" },

  -- Preprocessor
  PreProc = { fg = "#00B7EB" },
  Include = { fg = "#00E5FF" },
  Define = { fg = "#00B7EB" },
  Macro = { fg = "#00B7EB" },

  -- Types
  Type = { fg = "#A0B3D6" },
  StorageClass = { fg = "#A0B3D6" },
  Structure = { fg = "#A0B3D6" },
  Typedef = { fg = "#A0B3D6" },

  -- Specials
  Special = { fg = "#FFD580" },
  SpecialChar = { fg = "#FFAA66" },
  Tag = { fg = "#CBA6F7" },
  Delimiter = { fg = "#5C6773" },
  SpecialComment = { fg = "#5C6773" },
  Debug = { fg = "#FF6B6B" },

  -- Others
  Underlined = { fg = "#A0CFFF", style = "underline" },
  Ignore = { fg = "#3A3E52" },
  Error = { fg = "#FF6B6B", bg = "#1c1e28", style = "bold" },
}

return hl
