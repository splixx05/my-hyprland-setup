return {
  "EdenEast/nightfox.nvim",
  priority = 1000,
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true,
        blur = 1,
        opacity = 0.7,
        terminal_colors = true,
        dim_inactive = false,
        module_default = true,
        styles = {},
      },
    })
    -- setup must be called before loading
    vim.cmd("colorscheme nightfox")
  end,
}
