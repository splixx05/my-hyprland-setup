return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("res.configs.ui.lualine")
  end,
  event = "VeryLazy",
}
