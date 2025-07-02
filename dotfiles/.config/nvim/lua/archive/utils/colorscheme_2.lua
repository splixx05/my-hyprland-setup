local hl = require("res.utils.highlight")

for group, opts in pairs(hl) do
  vim.api.nvim_set_hl(0, group, opts)
end
