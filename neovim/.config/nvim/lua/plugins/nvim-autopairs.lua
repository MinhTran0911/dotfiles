return {
  'windwp/nvim-autopairs',
  enabled = true,
  event = "InsertEnter",
  config = function()
    local Rule = require('nvim-autopairs.rule')
    local npairs = require('nvim-autopairs')
    npairs.add_rule(Rule("begin", "end", "verilog"))
    npairs.add_rule(Rule("begin", "end", "systemverilog"))
    npairs.add_rule(Rule("`", "`", "-verilog"))
    npairs.add_rule(Rule("`", "`", "-systemverilog"))
  end
}
