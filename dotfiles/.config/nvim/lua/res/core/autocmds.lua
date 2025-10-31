-- // Set bashls for zsh scripts //
-- vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
--   pattern = "*.zsh",
--   callback = function()
--     vim.bo.filetype = "sh"
--   end,
-- })

-- // Set cursor style back to underline //
vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    io.write("\x1b[4 q")
  end,
})
