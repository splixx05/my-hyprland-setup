local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.ts_ls.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.markdown_oxide.setup({})
lspconfig.pylsp.setup({})
lspconfig.java_language_server.setup({})
lspconfig.bashls.setup({})

-- keymap
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
