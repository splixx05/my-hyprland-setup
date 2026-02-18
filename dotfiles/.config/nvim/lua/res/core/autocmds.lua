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

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.g.terminal_color_0 = "#07060E"
    vim.g.terminal_color_1 = "#FF6B6B"
    vim.g.terminal_color_2 = "#34eb83"
    vim.g.terminal_color_3 = "#FFAA66"
    vim.g.terminal_color_4 = "#5CAEFF"
    vim.g.terminal_color_5 = "#947CFF"
    vim.g.terminal_color_6 = "#00B7EB"
    vim.g.terminal_color_7 = "#7898C7"
    vim.g.terminal_color_8 = "#283457"
    vim.g.terminal_color_9 = "#FF8787"
    vim.g.terminal_color_10 = "#8CCF7E"
    vim.g.terminal_color_11 = "#FFD580"
    vim.g.terminal_color_12 = "#178FFF"
    vim.g.terminal_color_13 = "#E178FF"
    vim.g.terminal_color_14 = "#00E5FF"
    vim.g.terminal_color_15 = "#A0CFFF"
  end,
})
