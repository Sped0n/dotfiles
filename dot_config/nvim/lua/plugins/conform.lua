return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["python"] = { "ruff_format", "ruff_fix" },
      ["css"] = { "prettier" },
      ["html"] = { "prettier" },
      ["javascript"] = { "prettier" },
      ["lua"] = { "stylua" },
      ["markdown"] = { "prettier" },
      ["scss"] = { "prettier" },
      ["typescript"] = { "prettier" },
      ["yaml"] = { "prettier" },
      ["toml"] = { "taplo" },
      ["json"] = { "jq" },
      ["astro"] = { "prettier" },
      ["verilog"] = { "verible" },
    },
    formatters = {
      verible = {
        command = "verible-verilog-format",
        args = { "$FILENAME" },
        stdin = true,
        cwd = require("conform.util").root_file({
          ".rules.verible_lint",
        }),
      },
    },
  },
}
