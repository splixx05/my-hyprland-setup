return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          auto_install = true,
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("res.configs.ide.lsp-config")
    end,
  },
}
