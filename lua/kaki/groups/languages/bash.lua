return function(p)
  return {
    ["@function.builtin.bash"] = { fg = p.orange, bold = true }, -- echo, cd, etc.
    ["@variable.parameter.bash"] = { fg = p.yellow }, -- $1, $2, etc.
  }
end
