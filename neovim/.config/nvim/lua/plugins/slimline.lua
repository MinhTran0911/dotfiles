return {
  "sschleemilch/slimline.nvim",
  enabled = true,
  opts = {
    -- Component placement
    components = {
      left = {
        'mode',
        'path',
        'git',
      },
      center = {},
      right = {
        'selectioncount',
        'searchcount',
        'diagnostics',
        'filetype_lsp',
        'progress',
      },
    },

    style = 'bg',
    configs = {
      path = {
        hl = {
          primary = 'Define',
        },
      },
      git = {
        hl = {
          primary = 'Function',
        },
      },
      filetype_lsp = {
        hl = {
          primary = 'String',
        },
      },
    },
  }
}
