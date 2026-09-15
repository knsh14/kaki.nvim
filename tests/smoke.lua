-- Headless smoke test: run with `nvim --headless --clean --cmd "set rtp+=." -l tests/smoke.lua`
local function assert_eq(actual, expected, label)
  if actual ~= expected then
    error(("%s: expected %s, got %s"):format(label, vim.inspect(expected), vim.inspect(actual)))
  end
end

vim.cmd("colorscheme kaki")
assert_eq(vim.g.colors_name, "kaki", "colors_name")

-- Every defined group must be applied
local groups = require("kaki.groups")
local count = 0
for group in pairs(groups) do
  count = count + 1
  local hl = vim.api.nvim_get_hl(0, { name = group })
  if next(groups[group]) ~= nil and next(hl) == nil then
    error(("group %s was defined but not applied"):format(group))
  end
end
assert_eq(count > 200, true, "group count sanity (" .. count .. ")")

-- Spot-check colors
assert_eq(vim.api.nvim_get_hl(0, { name = "Normal" }).bg, 0x16161a, "Normal bg")
assert_eq(vim.api.nvim_get_hl(0, { name = "@function" }).fg, 0xf08c3a, "@function fg")
assert_eq(vim.g.terminal_color_1, "#e86464", "terminal red")

-- setup() options
require("kaki").setup({ transparent = true, italic = false, overrides = { Comment = { fg = "#ff0000" } } })
assert_eq(vim.api.nvim_get_hl(0, { name = "Normal" }).bg, nil, "transparent Normal bg")
assert_eq(vim.api.nvim_get_hl(0, { name = "@comment" }).italic, nil, "italic stripped")
assert_eq(vim.api.nvim_get_hl(0, { name = "Comment" }).fg, 0xff0000, "override applied")

-- lualine theme loads
assert_eq(require("lualine.themes.kaki").normal.a.bg, "#f08c3a", "lualine normal bg")

print("smoke test passed: " .. count .. " groups")
