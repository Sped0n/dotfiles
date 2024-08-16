return {
  "zbirenbaum/copilot.lua",
  keys = {
    {
      "<leader>uP",
      function()
        local ok, clients = pcall(LazyVim.lsp.get_clients, { name = "copilot", bufnr = 0 })
        if ok and #clients > 0 then
          vim.cmd("Copilot disable")
          vim.notify("Disabled copilot", "warn", { title = "copilot.lua" })
        else
          vim.cmd("Copilot enable")
          vim.notify("Enabled copilot", "info", { title = "copilot.lua" })
        end
      end,
      desc = "Toggle Copilot",
    },
  },
}
