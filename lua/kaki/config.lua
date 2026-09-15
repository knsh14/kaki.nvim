local M = {}

M.defaults = {
  -- Remove backgrounds so the terminal's own background shows through
  transparent = false,
  -- Set false to strip italics everywhere (for fonts without an italic face)
  italic = true,
  -- Final say over highlight groups: a table merged into the groups, or a
  -- function(groups, palette) that mutates/returns them
  overrides = nil,
}

M.options = vim.deepcopy(M.defaults)

M.set = function(opts)
  M.options = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), opts or {})
end

return M
