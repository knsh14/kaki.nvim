-- Highlight group definitions, split by concern and merged into a single table here.
-- Each module returns function(palette) -> table.
-- To add support for a language or plugin, create a file and add it to this list.
local palette = require("kaki.palette")

local modules = {
  "kaki.groups.editor",
  "kaki.groups.syntax",
  "kaki.groups.treesitter",

  "kaki.groups.languages.markdown",
  "kaki.groups.languages.python",
  "kaki.groups.languages.cpp",
  "kaki.groups.languages.go",
  "kaki.groups.languages.lua",
  "kaki.groups.languages.rust",
  "kaki.groups.languages.config-files", -- JSON / YAML / TOML
  "kaki.groups.languages.bash",

  "kaki.groups.plugins.telescope",
  "kaki.groups.plugins.pulse",
  "kaki.groups.plugins.lazy",
  "kaki.groups.plugins.cmp",
  "kaki.groups.plugins.nvim-tree",
  "kaki.groups.plugins.gitsigns",
  "kaki.groups.plugins.neo-tree",
}

local groups = {}
for _, name in ipairs(modules) do
  -- "error": fail fast when two modules define the same group name
  groups = vim.tbl_extend("error", groups, require(name)(palette))
end

return groups
