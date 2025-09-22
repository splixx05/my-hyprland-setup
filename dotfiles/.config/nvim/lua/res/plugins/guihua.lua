return {
  "ray-x/guihua.lua",
  run = "cd lua/fzy && make",
  config = function()
    require("res.configs.ide.guihua")
  end,
}
