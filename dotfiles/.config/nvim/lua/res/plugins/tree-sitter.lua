return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("res.configs.ide.tree-sitter")
  end,
}
