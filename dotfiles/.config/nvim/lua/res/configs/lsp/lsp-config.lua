local servers = {
  lua_ls = {},
  ts_ls = {},
  html = {},
  cssls = {},
  markdown_oxide = {},
  pylsp = {},
  java_language_server = {},
  bashls = {},
  -- typos_ls = {}, -- auskommentiert, wie bei dir
  yamlls = {},
  taplo = {},
  lemminx = { filetypes = { "xml" } },
}

-- Lade die Server
for server, config in pairs(servers) do
  vim.lsp.config(server, config)
  vim.lsp.enable(server)
end
