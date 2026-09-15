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

-- Groups whose background is dropped when transparent = true
local transparent_groups = {
  "Normal",
  "NormalNC",
  "SignColumn",
  "TabLineFill",
  "NvimTreeNormal",
  "NeoTreeNormal",
  "NeoTreeNormalNC",
  "TelescopeNormal",
  "TelescopeBorder",
}

local function apply_options(groups, config, palette)
  if config.transparent then
    for _, name in ipairs(transparent_groups) do
      if groups[name] then
        groups[name].bg = nil
      end
    end
  end

  if config.italic == false then
    for _, definition in pairs(groups) do
      definition.italic = nil
    end
  end

  if type(config.overrides) == "function" then
    groups = config.overrides(groups, palette) or groups
  elseif type(config.overrides) == "table" then
    groups = vim.tbl_deep_extend("force", groups, config.overrides)
  end

  return groups
end

M.load = function()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "kaki"

  local palette = require("kaki.palette")
  set_terminal_colors(palette)

  -- require() caches the shared table, so copy before applying options
  local groups = vim.deepcopy(require("kaki.groups"))
  groups = apply_options(groups, require("kaki.config").options, palette)

  for group, definition in pairs(groups) do
    vim.api.nvim_set_hl(0, group, definition)
  end
end

M.setup = function(opts)
  require("kaki.config").set(opts)
  -- Re-apply immediately when kaki is already the active colorscheme
  if vim.g.colors_name == "kaki" then
    M.load()
  end
end

return M
