return {
  'akinsho/bufferline.nvim',
  enabled = true,
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      mode = 'buffers',
      numbers = "buffer_id",
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      separator_style = 'slant',
      indicator = { style = 'underline' },
      offsets = {
        {
          filetype = "snacks_explorer",
          text = "File Explorer",
          text_align = "center",
          separator = true
        }
      },
    }
  }
}
