return {
  "catgoose/nvim-colorizer.lua",
  event = "BufReadPre",
  opts = { -- set to setup table
  },
  config = function()
    require("colorizer").setup({
      lazy_load = false, -- Lazily schedule buffer highlighting setup function
      user_default_options = {
        names = true, -- "Name" codes like Blue or red.  Added from `vim.api.nvim_get_color_map()`
        names_opts = { -- options for mutating/filtering names.
          lowercase = true, -- name:lower(), highlight `blue` and `red`
          camelcase = true, -- name, highlight `Blue` and `Red`
          uppercase = false, -- name:upper(), highlight `BLUE` and `RED`
          strip_digits = false, -- ignore names with digits,
        },
        names_custom = false, -- Custom names to be highlighted: table|function|false
        RGB = true, -- #RGB hex codes
        RGBA = true, -- #RGBA hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = false, -- #RRGGBBAA hex codes
        AARRGGBB = false, -- 0xAARRGGBB hex codes
        rgb_fn = false, -- CSS rgb() and rgba() functions
        hsl_fn = false, -- CSS hsl() and hsla() functions
        oklch_fn = false, -- CSS oklch() function
        css = false, -- Enable all CSS *features*:
        css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn, oklch_fn
        -- Tailwind colors.  boolean|'normal'|'lsp'|'both'.  True sets to 'normal'
        tailwind = false, -- Enable tailwind colors
        tailwind_opts = { -- Options for highlighting tailwind names
          update_names = false, -- When using tailwind = 'both', update tailwind names from LSP results.  See tailwind section
        },
      },
    })
  end,
}
