vim.filetype.add({
  pattern = {
    [".*/zsh/.*"] = "zsh",
  },
  filename = {
    [".zshrc"] = "zsh",
    [".zprofile"] = "zsh",
    [".zlogin"] = "zsh",
  },
  extension = {
    zsh = "zsh",
  },
})
