local M = {}

M.load = function()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "kaki"

  local groups = require("kaki.groups")
  for group, config in pairs(groups) do
    vim.api.nvim_set_hl(0, group, config)
  end
end

-- setup() is an alias for load(), kept for plugin manager conventions
M.setup = M.load

return M
