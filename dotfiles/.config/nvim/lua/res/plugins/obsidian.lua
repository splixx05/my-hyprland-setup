return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  -- event = {
  --   -- to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  -- "BufReadPre "
  -- 	.. vim.fn.expand("~")
  -- 	.. "/path/to/notes/*.md",
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "buf-parent",
        path = function()
          return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
        end,
      },
    },
  },
  follow_url_func = function(url)
    -- Open the URL in the default web browser.
    vim.fn.jobstart({ "xdg-open", url }) -- linux
    -- vim.ui.open(url) -- need Neovim 0.10.0+
  end,
  config = function()
    require("res.configs.ide.obsidian")
  end,
}
