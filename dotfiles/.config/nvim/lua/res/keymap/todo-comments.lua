vim.keymap.set("n", "nt", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "pt", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
