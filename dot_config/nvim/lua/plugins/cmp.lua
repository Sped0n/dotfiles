return {
  "hrsh7th/nvim-cmp",
  opts = {
    completion = {
      completeopt = "menu,menuone,noinsert" .. (false and "" or ",noselect"),
    },
    mapping = {
      ["<CR>"] = LazyVim.cmp.confirm({ select = false }),
    },
  },
}
