local servers = {
  bashls = {},
  cssls = {},
  css_variables = {},
  cssmodules_ls = {},
  html = {},
  hyprls = {},
  jsonls = {},
  lua_ls = {
    cmd = { "/sbin/lua-language-server" },
  },
  markdown_oxide = {},
  pyright = {},
  ts_ls = {},
  yamlls = {},
  taplo = {},
  textlsp = {},
}

-- Load Server
for server, config in pairs(servers) do
  vim.lsp.config(server, config)
  vim.lsp.enable(server)
end
