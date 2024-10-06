return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cssls = {
        settings = {
          css = { validate = true, lint = {
            unknownAtRules = "ignore",
          } },
          scss = { validate = true, lint = {
            unknownAtRules = "ignore",
          } },
          less = { validate = true, lint = {
            unknownAtRules = "ignore",
          } },
        },
      },
      verible = {
        filetypes = { "verilog", "systemverilog" },
        cmd = { "verible-verilog-ls", "--rules_config_search" },
      },
    },
  },
}
