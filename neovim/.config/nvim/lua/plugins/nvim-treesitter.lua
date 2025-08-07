return {
  'nvim-treesitter/nvim-treesitter',
  enabled = true,
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',

  init = function()
    languages = { 'rust', 'c', 'yaml', 'toml', 'cpp', 'systemverilog', 'javascript', 'typescript', 'python' }

    vim.api.nvim_create_autocmd('FileType', {
      pattern = languages,
      callback = function()
        vim.treesitter.start()
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })

    require'nvim-treesitter'.setup {
      -- Directory to install parsers and queries to
      install_dir = vim.fn.stdpath('data') .. '/site'
    }

    require'nvim-treesitter'.install(languages):wait(300000)


  end,

}
