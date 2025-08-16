local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Goto definition" })
keymap.set("n", "<leader>K", vim.lsp.buf.hover, { desc = "Hover" })
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
