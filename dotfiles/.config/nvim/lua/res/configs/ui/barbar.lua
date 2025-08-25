require("barbar").setup({
  sidebar_filetypes = {
    NvimTree = {
      text = "NvimTree",
      highlight = "Directory",
      padding = 1,
    },
  },
  animation = true,
  tabpages = false,
  highlight_visible = true,
  highlight_file_icons = true,
  icons = {
    buffer_index = true,
    buffer_number = false,
    button = "✖", --> origin. character 
    diagnostics = {
      [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "⁉ " }, --> origin. character ﬀ
      [vim.diagnostic.severity.WARN] = { enabled = false },
      [vim.diagnostic.severity.INFO] = { enabled = false },
      [vim.diagnostic.severity.HINT] = { enabled = true },
      gitsigns = {
        added = { enabled = true, icon = "+" },
        changed = { enabled = true, icon = "~" },
        deleted = { enabled = true, icon = "-" },
      },
      filetype = {
        custom_colors = true,
        enabled = true,
      },
      separator = { left = " ", right = " " },
      separator_at_end = false,
      modified = { button = "●" },
      pinned = { button = "", filename = true },
    },
  },
})

-- TODO: config the preset from 'default' to 'slanted' (tab style)
