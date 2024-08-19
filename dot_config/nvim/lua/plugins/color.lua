return {
  { "Mofiqul/vscode.nvim", name = "vscode", lazy = false, priority = 1000 },
  -- Configure LazyVim to load the theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
