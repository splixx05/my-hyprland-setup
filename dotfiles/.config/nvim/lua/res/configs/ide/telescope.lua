local telescope = require("telescope")

telescope.setup({
  defaults = {
    path_display = { "smart" },
    mappings = {},
  },
})

telescope.load_extension("fzf")
