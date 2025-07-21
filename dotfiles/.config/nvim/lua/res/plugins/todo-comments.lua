local cc = require("res.utils.colors")
return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "ibhagwan/fzf-lua" },
  opts = {
    keywords = {
      FIX = { icon = " ", color = cc.red, alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
      TODO = { icon = " ", color = cc.cyan },
      HACK = { icon = " ", color = cc.yellow },
      WARN = { icon = " ", color = cc.orange, alt = { "WARNING", "XXX" } },
      PERF = { icon = " ", alt = { cc.blue, "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = " ", color = cc.green, alt = { "INFO" } },
      TEST = { icon = " ", color = cc.magenta, alt = { "TESTING", "PASSED", "FAILED" } },
    },
  },
}
