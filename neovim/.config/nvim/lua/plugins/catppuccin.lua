return {
  "catppuccin/nvim",
  enabled = true,
  name = "catppuccin",
  priority = 1000,
  init = function()
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
  opts = {
    auto_integrations = true,
  },
}
