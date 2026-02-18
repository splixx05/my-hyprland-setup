local c = require("res.utils.colors")
require("obsidian").setup({
  -- TODO: remove these in 4.0.0
  legacy_commands = true,
  note_frontmatter_func = require("obsidian.builtin").frontmatter,
  disable_frontmatter = false,

  statusline = {
    format = "{{backlinks}} backlinks  {{properties}} properties  {{words}} words  {{chars}} chars",
    enabled = true,
  },

  -- TODO:: replace with more general options before 4.0.0
  follow_url_func = vim.ui.open,
  follow_img_func = vim.ui.open,
  notes_subdir = nil,
  new_notes_location = "current_dir",

  workspaces = {},
  log_level = vim.log.levels.INFO,
  note_id_func = require("obsidian.builtin").zettel_id,
  note_path_func = function(spec)
    local path = spec.dir / tostring(spec.id)
    return path
  end,
  wiki_link_func = require("obsidian.builtin").wiki_link_id_prefix,
  markdown_link_func = require("obsidian.builtin").markdown_link,
  preferred_link_style = "wiki",
  open_notes_in = "current",

  note = {
    template = (function()
      local root = vim.iter(vim.api.nvim_list_runtime_paths()):find(function(path)
        return vim.endswith(path, "obsidian.nvim")
      end)
      if not root then
        return nil
      end
      return vim.fs.joinpath(root, "data/default_template.md")
    end)(),
  },

  frontmatter = {
    enabled = true,
    func = require("obsidian.builtin").frontmatter,
    sort = { "id", "aliases", "tags" },
  },

  templates = {
    enabled = true,
    folder = nil,
    date_format = nil,
    time_format = nil,
    substitutions = {},

    customizations = {},
  },

  backlinks = {
    parse_headers = true,
  },

  completion = (function()
    local has_nvim_cmp, _ = pcall(require, "cmp")
    local has_blink = pcall(require, "blink.cmp")
    return {
      nvim_cmp = has_nvim_cmp and not has_blink,
      blink = has_blink,
      min_chars = 2,
      match_case = true,
      create_new = true,
    }
  end)(),

  picker = {
    name = nil,
    note_mappings = {
      new = "<C-x>",
      insert_link = "<C-l>",
    },
    tag_mappings = {
      tag_note = "<C-x>",
      insert_tag = "<C-l>",
    },
  },

  search = {
    sort_by = "modified",
    sort_reversed = true,
    max_lines = 1000,
  },

  daily_notes = {
    enabled = true,
    folder = nil,
    date_format = "%Y-%m-%d",
    alias_format = nil,
    default_tags = { "daily-notes" },
    workdays_only = true,
  },

  ui = {
    enable = true,
    ignore_conceal_warn = false,
    update_debounce = 200,
    max_file_length = 5000,
    checkboxes = {
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

  attachments = {
    folder = "attachments",
    img_text_func = require("obsidian.builtin").img_text_func,
    img_name_func = function()
      return string.format("Pasted image %s", os.date("%Y%m%d%H%M%S"))
    end,
    confirm_img_paste = true, -- TODO: move to paste module, paste.confirm
  },

  callbacks = {},

  footer = {
    enabled = true,
    format = "{{backlinks}} backlinks  {{properties}} properties  {{words}} words  {{chars}} chars",
    hl_group = "Comment",
    separator = string.rep("-", 80),
  },

  open = {
    use_advanced_uri = false,
    func = vim.ui.open,
    schemes = { "https", "http", "file", "mailto" },
  },

  checkbox = {
    enabled = true,
    create_new = true,
    order = { " ", "~", "!", ">", "x" },
  },

  comment = {
    enabled = false,
  },
})
