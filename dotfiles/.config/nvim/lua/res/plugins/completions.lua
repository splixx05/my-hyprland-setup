return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "kmarius/jsregexp",
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("res.configs.ide.completions")
    end,
  },
}
