return { 
  'echasnovski/mini.nvim',
  enabled = true,
  version = false,
  init = function()

    require('mini.basics').setup({
      -- Options. Set to `false` to disable.
      options = {
        -- Basic options ('number', 'ignorecase', and many more)
        basic = false,
        -- Extra UI features ('winblend', 'listchars', 'pumheight', ...)
        extra_ui = false,
        -- Presets for window borders ('single', 'double', ...)
        win_borders = 'default',
      },

      -- Mappings. Set to `false` to disable.
      mappings = {
        -- Basic mappings (better 'jk', save with Ctrl+S, ...)
        basic = false,
        -- Prefix for mappings that toggle common options ('wrap', 'spell', ...).
        -- Supply empty string to not create these mappings.
        option_toggle_prefix = [[\]],
        -- Window navigation with <C-hjkl>, resize with <C-arrow>
        windows = false,
        -- Move cursor in Insert, Command, and Terminal mode with <M-hjkl>
        move_with_alt = false,
      },

      -- Autocommands. Set to `false` to disable
      autocommands = {
        -- Basic autocommands (highlight on yank, start Insert in terminal, ...)
        basic = true,
        -- Set 'relativenumber' only in linewise and blockwise Visual mode
        relnum_in_visual_mode = false,
      },

      -- Whether to disable showing non-error feedback
      silent = false,
    })

    require("mini.ai").setup()
    require("mini.align").setup()
    require("mini.splitjoin").setup()
    require("mini.surround").setup()
    require("mini.bracketed").setup()
    require("mini.bufremove").setup()

    local diff = require("mini.diff")
    diff.setup({
      source = { diff.gen_source.git(), diff.gen_source.save() }
    })

    require("mini.icons").setup()
    require("mini.cursorword").setup()
    vim.api.nvim_set_hl(0, 'MiniCursorword', {})

    require("mini.move").setup({
      -- Module mappings. Use `''` (empty string) to disable one.
      mappings = {
        -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
        left  = '<M-Left>',
        right = '<M-Right>',
        down  = '<M-Down>',
        up    = '<M-Up>',

        -- Move current line in Normal mode
        line_left  = '<M-Left>',
        line_right = '<M-Right>',
        line_down  = '<M-Down>',
        line_up    = '<M-Up>',
      },

      -- Options which control moving behavior
      options = {
        -- Automatically reindent selection during linewise vertical move
        reindent_linewise = true,
      },
    })

    local hipatterns = require("mini.hipatterns")
    hipatterns.setup({
      highlighters = {
        fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
        hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
        todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
        note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },
        hipatterns.gen_highlighter.hex_color()
      }
    })
  end
}
