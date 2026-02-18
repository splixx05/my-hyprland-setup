local lualine = require("lualine")
local colors = require("res.utils.colors")

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand("%:p:h")
    local gitdir = vim.fn.finddir(".git", filepath .. ";")
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = "  ",
    section_separators = "  ",
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg.main, bg = "NONE" } },
      inactive = { c = { fg = colors.fg.main, bg = "NONE" } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x at right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left({
  function()
    return " " -- other character --> ▊ 
  end,
  color = { fg = colors.prim.main }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_left({
  -- mode component
  function()
    local mode_icons = {
      n = "", -- Normal
      i = "󰏫", -- Insert
      v = "", -- Visual
      [""] = "", -- Visual block
      V = "", -- Visual line
      c = "", -- Command
      no = "",
      s = "󰏫", -- Select
      S = "󰏫",
      [""] = "󰏫",
      ic = "󰏫", -- Insert completion
      R = "󰑓", -- Replace
      Rv = "󰑓",
      cv = "󰈆", -- Vim Ex
      ce = "󰈆",
      r = "󰑓", -- Hit-enter prompt
      rm = "󰑓",
      ["r?"] = "󰑓",
      ["!"] = "", -- Shell
      t = "", -- Terminal
    }
    return mode_icons[vim.fn.mode()] or ""
  end,
  color = function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.prim.main,
      i = colors.acc.green,
      v = colors.acc.magenta,
      [""] = colors.acc.blue,
      V = colors.acc.violet,
      c = colors.acc.magenta,
      no = colors.acc.red,
      s = colors.acc.orange,
      S = colors.acc.orange,
      [""] = colors.acc.orange,
      ic = colors.acc.yellow,
      R = colors.acc.violet,
      Rv = colors.acc.violet,
      cv = colors.acc.red,
      ce = colors.acc.red,
      r = colors.prim.main,
      rm = colors.prim.main,
      ["r?"] = colors.prim.main,
      ["!"] = colors.acc.red,
      t = colors.acc.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1 },
})

-- ins_left({
-- 	-- filesize component
-- 	"filesize",
-- 	cond = conditions.buffer_not_empty,
-- })

ins_left({ "progress", color = { fg = colors.prim.main } })

ins_left({ "location", color = { fg = colors.prim.main } })

ins_left({
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = " ", warn = " ", info = " " },
  diagnostics_color = {
    error = { fg = colors.acc.red },
    warn = { fg = colors.acc.yellow },
    info = { fg = colors.prim.main },
  },
})

-- Define a function to check that ollama is installed and working
local function get_condition()
  return package.loaded["ollama"] and require("ollama").status ~= nil
end

-- Define a function to check the status and return the corresponding icon
local function get_status_icon()
  local status = require("ollama").status()

  if status == "IDLE" then
    return "OLLAMA IDLE"
  elseif status == "WORKING" then
    return "OLLAMA BUSY"
  end
end

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left({
  function()
    return "%="
  end,
})

ins_left({
  "filename",
  cond = conditions.buffer_not_empty,
  color = { fg = colors.fg.main, gui = "bold" },
})

ins_left({
  -- Lsp server name .
  function()
    local msg = "No Active Lsp"
    local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
    local clients = vim.lsp.get_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = " LSP:",
  color = { fg = colors.fg.main, gui = "bold" },
})

-- Add components to right sections
ins_right({
  "o:encoding", -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = colors.prim.main },
})

ins_right({
  "fileformat",
  fmt = string.upper,
  icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
  color = { fg = colors.prim.main },
})

ins_right({
  "branch",
  icon = "",
  color = { fg = colors.acc.green, gui = "bold" },
})

ins_right({
  "diff",
  -- Is it me or the symbol for modified us really weird
  symbols = { added = " ", modified = "󰝤 ", removed = " " },
  diff_color = {
    added = { fg = colors.acc.green },
    modified = { fg = colors.acc.orange },
    removed = { fg = colors.acc.red },
  },
  cond = conditions.hide_in_width,
})

ins_right({
  function()
    return " " -- other character --> ▊ 
  end,
  color = { fg = colors.prim.main },
  padding = { left = 1 },
})

-- Now don't forget to initialize lualine
lualine.setup(config)
