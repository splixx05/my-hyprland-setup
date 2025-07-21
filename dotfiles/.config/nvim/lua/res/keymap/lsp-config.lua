local keymap = vim.keymap -- for conciseness

keymap.set("n", "gd", vim.lsp.buf.definition, {})
keymap.set("n", "K", vim.lsp.buf.hover, {})
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
