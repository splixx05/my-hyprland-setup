return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  event = "VeryLazy",
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {},
  config = function()
    require("res.configs.ui.barbar")
  end,
}
