local colors = {
  bg = "#131A24",
  fg = "#7898C7",
  black = {
    light = "#18181A",
    mid = "#121219",
    dark = "#070713",
  },
  grey = {
    light = "#5A6180",
    mid = "#414868",
    dark = "#19222E",
  },
  red = {
    light = "#FB898F",
    mid = "#ec5f67",
    dark = "#6F070C",
  },
  green = {
    light = "#8DF6BB",
    mid = "#34eb83",
    dark = "#007734",
  },
  yellow = {
    light = "#FFDDAC",
    mid = "#ECBE7B",
    dark = "#A16F26",
  },
  orange = {
    light = "#FFA339",
    mid = "#FF8800",
    dark = "#9B5300",
  },
  blue = {
    light = "#5896C1",
    mid = "#065287",
    dark = "#032842",
  },
  magenta = {
    light = "#DFA5EF",
    mid = "#c678dd",
    dark = "#8E34A8",
  },
  violet = {
    light = "#a9a1e1",
    mid = "#776FB0",
    dark = "#4A4284",
  },
  cyan = {
    light = "#3CA5D8",
    mid = "#1793D1",
    dark = "#045C86",
  },
  white = {
    light = "#E9EDFE",
    mid = "#c0caf5",
    dark = "#97A6E5",
  },
}

local hl = {
  background = colors.bg,
  foreground = colors.fg,
  comment = colors.grey.light,
  muted = colors.grey.mid,
  accent = colors.cyan.light,
  warning = colors.orange.mid,
  error = colors.red.mid,
  termcolor = colors.bg,
  base = colors.cyan.mid,
  state = colors.magenta.mid,
  info = colors.green.mid,
  type = colors.orange.mid,
  quote = colors.violet.mid,
  fnc = colors.cyan.mid,
  key = colors.magenta.light,
  builtin = colors.cyan.dark,
  paren = colors.green.light,
}

return hl
