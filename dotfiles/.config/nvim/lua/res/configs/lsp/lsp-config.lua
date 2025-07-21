local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.ts_ls.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.markdown_oxide.setup({})
lspconfig.pylsp.setup({})
lspconfig.java_language_server.setup({})
lspconfig.bashls.setup({})
-- lspconfig.typos_ls.setup({})
lspconfig.yamlls.setup({})
lspconfig.lemminx.setup({
  filetypes = { "xml" },
  settings = {
    xml = {
      catalogs = {
        "file:///$HOME/Dev/projects/xml/camt53-1-8.xsd",
        "file:///$HOME/Dev/projects/xml/camt53-1-8.xsd",
      }, -- optional
      validation = {
        enabled = true,
      },
    },
  },
})
