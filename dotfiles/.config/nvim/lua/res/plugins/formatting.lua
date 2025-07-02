return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("res.configs.lsp.formatting")
  end,
}
