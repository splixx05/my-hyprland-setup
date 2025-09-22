return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
      local mr = require("mason-registry")

      local tools = {
        "pyright",
        "bash-language-server",
        "css-lsp",
        "css-variables-language-server",
        "cssmodules-language-server",
        "html-lsp",
        "hyprls",
        "json-lsp",
        "lua-language-server",
        "markdown-oxide",
        "typescript-language-server",
        "yaml-language-server",
        "textlsp",
      }

      for _, tool in ipairs(tools) do
        if not mr.is_installed(tool) then
          mr.get_package(tool):install()
        end
      end
    end,
  },

  -- LSP Setup
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.pyright.setup({})
      lspconfig.lua_ls.setup({ settings = { Lua = { diagnostics = { globals = { "vim" } } } } })
      lspconfig.bashls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.css_variables_ls.setup({})
      lspconfig.cssmodules_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.markdown_oxide.setup({})
      lspconfig.hyprls.setup({})
      lspconfig.textlsp.setup({})
    end,
  },
}
