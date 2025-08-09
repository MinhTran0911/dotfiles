return {
  'windwp/nvim-autopairs',
  enabled = true,
  event = "InsertEnter",
  config = function()
    local Rule = require('nvim-autopairs.rule')
    local npairs = require('nvim-autopairs')
    local cond = require('nvim-autopairs.conds')

    npairs.setup()

    npairs.remove_rule('`', { "verilog", "systemverilog" })
    npairs.remove_rule('\'', { "verilog", "systemverilog" })

    npairs.add_rule(
      Rule("begin", "end", { "verilog", "systemverilog" })
        :end_wise(cond.done())
    )

  end
}
