local c = require("res.utils.colors")
require("obsidian").setup({
  workspaces = {
    {
      name = "buf-parent",
      path = function()
        return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
      end,
    },
  },
  ui = {
    enable = true, -- set to false to disable all additional syntax features
    update_debounce = 200, -- update delay after a text change (in milliseconds)
    max_file_length = 5000, -- disable UI features for files with more than this many lines
    -- Define how various check-boxes are displayed
    checkboxes = {
      -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
      [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
      ["x"] = { char = "", hl_group = "ObsidianDone" },
      [">"] = { char = "", hl_group = "ObsidianRightArrow" },
      ["c"] = { char = "󰰱", hl_group = "ObsidianCancel" },
      ["!"] = { char = "", hl_group = "ObsidianImportant" },
      ["I"] = { char = "", hl_group = "ObsidianIdea" },
      ["d"] = { char = "📅", hl_group = "ObsidianIdea" },
      ["t"] = { char = "🕓", hl_group = "ObsidianIdea" },
      ["f"] = { char = "", hl_group = "ObsidianFavorite" },
      ["N"] = { char = "", hl_group = "ObsidianNote" },
      ["k"] = { char = "", hl_group = "ObsidianKey" },
      ["i"] = { char = "", hl_group = "ObsidianInfo" },
      ["l"] = { char = "", hl_group = "ObsidianProgress" },
      ["?"] = { char = "❓", hl_group = "ObsidianQuestion" },
      ["p"] = { char = "", hl_group = "ObsidianPositiv" },
      ["n"] = { char = "", hl_group = "ObsidianNegativ" },
      ["P"] = { char = "📞", hl_group = "ObsidianPhone" },
    },
    bullets = { char = "•", hl_group = "ObsidianBullet" },
    external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
    reference_text = { hl_group = "ObsidianRefText" },
    highlight_text = { hl_group = "ObsidianHighlightText" },
    tags = { hl_group = "ObsidianTag" },
    block_ids = { hl_group = "ObsidianBlockID" },
    hl_groups = {
      -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
      ObsidianTodo = { bold = true, fg = c.acc.cyan },
      ObsidianProgress = { bold = true, fg = c.acc.cyan },
      ObsidianDone = { bold = true, fg = c.acc.green },
      ObsidianPositiv = { bold = true, fg = c.acc.green },
      ObsidianNote = { bold = true, fg = c.acc.green },
      ObsidianRightArrow = { bold = true, fg = c.acc.orange },
      ObsidianKey = { bold = true, fg = c.acc.orange },
      ObsidianCancel = { bold = true, fg = c.acc.magenta },
      ObsidianImportant = { bold = true, fg = c.acc.red },
      ObsidianQuestion = { bold = true, fg = c.acc.red },
      ObsidianNegativ = { bold = true, fg = c.acc.red },
      ObsidianBullet = { bold = true, fg = c.acc.cyan },
      ObsidianRefText = { underline = true, fg = c.acc.violet },
      ObsidianExtLinkIcon = { fg = c.acc.violet },
      ObsidianTag = { italic = true, fg = c.acc.magenta },
      ObsidianBlockID = { italic = true, fg = c.fg.hi },
      ObsidianInfo = { bold = true, fg = c.fg.hi },
      ObsidianIdea = { bold = true, fg = c.acc.yellow },
      ObsidianFavorite = { bold = true, fg = c.acc.yellow },
    },
  },
})
