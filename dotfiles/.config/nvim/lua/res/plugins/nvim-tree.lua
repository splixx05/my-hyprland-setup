return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("res.configs.ide.nvim-tree")
  end,
}
