return {
  'HiPhish/rainbow-delimiters.nvim',
  enabled = true,
  config = function()
    vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { link = 'Keyword' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { link = 'Type' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue', { link = 'Function' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterOrange', { link = 'Constant' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen', { link = 'String' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { link = 'Statement' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { link = 'Identifier' })
  end
}
