return {
  -- add gruvbox to color shcemes
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    name = "gruvbox",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = true,
          comments = false,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {
          bright_orange = "#ebdbb2",
        },
        overrides = {
          Special = { link = "GruvboxYellow" },
          SpecialChar = { link = "GruvboxFg1" },
          Include = { link = "GruvboxRed" },
          ["@symbol"] = { link = "GruvboxFg1" },
          ["@field"] = { link = "GruvboxFg1" },
          ["@property"] = { link = "GruvboxFg1" },
          ["@variable.member"] = { link = "GruvboxFg1" },
          ["@variable.parameter"] = { link = "GruvboxFg1" },
          ["@operator"] = { link = "GruvboxAqua" },
          ["@parameter"] = { link = "GruvboxFg1" },
          ["@keyword.operator"] = { link = "GruvboxAqua" },
          ["@variable.builtin"] = { link = "GruvboxFg1" },
          ["@function.builtin"] = { link = "GruvboxRed" },
          ["@constant.builtin"] = { link = "GruvboxYellow" },
          ["@constructor"] = { link = "GruvboxYellow" },
          -- telescope
          TelescopeSelection = { link = "GruvboxYellowBold" },
          -- neotree
          NeoTreeModified = { fg = "#fabd2f", italic = false },
          NeoTreeRootName = { fg = "#ebdbb2", bold = true },
          NeoTreeGitModified = { fg = "#fabd2f" },
          NeoTreeGitAdded = { fg = "#b8bb26" },
          NeoTreeGitDeleted = { fg = "#fb4934" },
          NeoTreeGitStaged = { fg = "#b8bb26" },
          NeoTreeGitConflict = { fg = "#fb4934" },
          NeoTreeGitUntracked = { fg = "#b8bb26", default = true },
          NeoTreeGitUnstaged = { fg = "#fabd2f", default = true },
          NeoTreeIndentMarker = { fg = "#665c54" },
          -- NonText
          NonText = { fg = "#282828" },
          -- search
          IncSearch = { bg = "#ebdbb2", fg = "#282828", reverse = false },
        },
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },
  -- Configure LazyVim to load the theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
