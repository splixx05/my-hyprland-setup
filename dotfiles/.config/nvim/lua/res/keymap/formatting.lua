-- none-ls
vim.keymap.set("n", "<leader>mf", function()
  vim.lsp.buf.format({})
end, { desc = "Set format" })

-- conform
local conform = require("conform")
vim.keymap.set({ "n", "v" }, "<leader>mc", function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  })
end, { desc = "Trigger format for current files" })

-- linting
local lint = require("lint")
vim.keymap.set("n", "<leader>ml", function()
  lint.try_lint()
end, { desc = "Trigger linting for current file" })
