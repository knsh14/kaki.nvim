local M = {}

-- The 16 ANSI colors for the builtin :terminal. The palette has no magenta
-- or cyan, so those slots reuse orange and blue to stay on theme.
local function set_terminal_colors(p)
  vim.g.terminal_color_0 = p.border
  vim.g.terminal_color_1 = p.red
  vim.g.terminal_color_2 = p.green
  vim.g.terminal_color_3 = p.yellow
  vim.g.terminal_color_4 = p.blue
  vim.g.terminal_color_5 = p.orange
  vim.g.terminal_color_6 = p.blue
  vim.g.terminal_color_7 = p.fg
  vim.g.terminal_color_8 = p.comment
  vim.g.terminal_color_9 = p.red
  vim.g.terminal_color_10 = p.green
  vim.g.terminal_color_11 = p.yellow
  vim.g.terminal_color_12 = p.blue
  vim.g.terminal_color_13 = p.orange
  vim.g.terminal_color_14 = p.blue
  vim.g.terminal_color_15 = p.fg
end

M.load = function()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "kaki"

  set_terminal_colors(require("kaki.palette"))

  local groups = require("kaki.groups")
  for group, config in pairs(groups) do
    vim.api.nvim_set_hl(0, group, config)
  end
end

-- setup() is an alias for load(), kept for plugin manager conventions
M.setup = M.load

return M
