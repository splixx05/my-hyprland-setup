---
id: colpal
aliases: []
tags: []
---

| Name    | Dunkler   | Original  | Heller    |
| ------- | --------- | --------- | --------- |
| bg      | `#0e141b` | `#131A24` | `#18202d` |
| fg      | `#5a7295` | `#7898C7` | `#96bef9` |
| black   | `#262738` | `#32344A` | `#3e415d` |
| red     | `#b1474d` | `#ec5f67` | `#ff7781` |
| green   | `#27b062` | `#34eb83` | `#41ffa4` |
| yellow  | `#b18e5c` | `#ECBE7B` | `#ffee9a` |
| orange  | `#bf6600` | `#FF8800` | `#ffaa00` |
| blue    | `#3d83b3` | `#51afef` | `#65dbff` |
| magenta | `#945aa6` | `#c678dd` | `#f896ff` |
| violet  | `#7f79a9` | `#a9a1e1` | `#d3c9ff` |
| cyan    | `#00e5ff` | `#00B7EB` | `#0089b0` |
| white   | `#9098b8` | `#c0caf5` | `#f0fcff` |

| Rolle       | HEX       | Kommentar                                  |
| ----------- | --------- | ------------------------------------------ |
| **green**   | `#8CCF7E` | Frisches Grün für Erfolg/Strings           |
| **yellow**  | `#FFD580` | Warmes, helles Gelb                        |
| **orange**  | `#FFAA66` | Für Warnungen / Keys                       |
| **red**     | `#FF6B6B` | Fehler oder wichtige Hinweise              |
| **blue**    | `#5CAEFF` | Nebenfarbe zum Cyan                        |
| **magenta** | `#CBA6F7` | Etwas weichere, elegante Magenta           |
| **violet**  | `#A099FF` | Alternative zu magenta, für Keywords z. B. |

colors = {
bg = "#131A24",
fg = "#7898C7",
cyan = "#00B7EB",
accent = "#7FB4FF",
highlight = "#B4C9FF",
comment = "#5C6773",
dimmed_fg = "#A0B3D6",
cursorline = "#1C2533",

green = "#8CCF7E",
yellow = "#FFD580",
orange = "#FFAA66",
red = "#FF6B6B",
blue = "#5CAEFF",
cyan = "#00B7EB",
white = "#f0f4ff",
magenta = "#CBA6F7",
violet = "#A099FF",
}

for group, opts in pairs(highlights) do
vim.api.nvim_set_hl(0, group, opts)
end

-- Hauptfarben
Normal = { fg = "#7898C7", bg = "#131A24" },
Cursor = { fg = "#131A24", bg = "#00B7EB" },
Visual = { bg = "#1C2533" },
CursorLine = { bg = "#1C2533" },
CursorLineNr = { fg = "#FFD580", bg = "#1C2533" },
LineNr = { fg = "#3A3E52" },

-- Kommentare & Texte
Comment = { fg = "#5C6773", style = "italic" },
Todo = { fg = "#FFD580", bg = "#1c1e28", style = "bold,italic" },

-- Konstanten
Constant = { fg = "#FFD580" },
String = { fg = "#8CCF7E" },
Character = { fg = "#A7F3A1" },
Number = { fg = "#FFAA66" },
Boolean = { fg = "#FF6B6B" },
Float = { fg = "#FFD580" },

-- Identifikatoren & Funktionen
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

-- Präprozessor
PreProc = { fg = "#00B7EB" },
Include = { fg = "#00E5FF" },
Define = { fg = "#00B7EB" },
Macro = { fg = "#00B7EB" },

-- Typen
Type = { fg = "#A0B3D6" },
StorageClass = { fg = "#A0B3D6" },
Structure = { fg = "#A0B3D6" },
Typedef = { fg = "#A0B3D6" },

-- Specials
Special = { fg = "#FFD580" },
SpecialChar = { fg = "#FFAA66" },
Tag = { fg = "#CBA6F7" },
Delimiter = { fg = "#5C6773" },
SpecialComment= { fg = "#5C6773" },
Debug = { fg = "#FF6B6B" },

-- Weitere
Underlined = { fg = "#A0CFFF", style = "underline" },
Ignore = { fg = "#3A3E52" },
Error = { fg = "#FF6B6B", bg = "#1c1e28", style = "bold" },
