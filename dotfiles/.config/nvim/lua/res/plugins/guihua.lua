return {
  "ray-x/guihua.lua",
  run = "cd lua/fzy && make",
  config = function()
    require("res.configs.ui.guihua")
  end,
}
