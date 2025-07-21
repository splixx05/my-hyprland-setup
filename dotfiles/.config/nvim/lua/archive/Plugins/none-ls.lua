return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.typos.with({
          filetypes = {
            "markdown",
            "text",
            "toml",
            "yaml",
            "json",
          },
        }),
      },
    })
  end,
}
