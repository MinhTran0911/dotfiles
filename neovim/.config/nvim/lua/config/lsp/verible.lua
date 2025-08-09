vim.lsp.config('verible', {
  cmd = { 'verible-verilog-ls' },
  filetypes = { 'systemverilog', 'verilog' },
  root_markers = { '.git' },
})

vim.lsp.enable('verible')
