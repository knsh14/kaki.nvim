return function(p)
  return {
    ["@variable.builtin.lua"] = { fg = p.yellow, italic = true }, -- vim, arg, etc.
    ["@function.builtin.lua"] = { fg = p.orange, bold = true }, -- require, print, etc.
    ["@constructor.lua"] = { fg = p.blue }, -- table constructors {}
  }
end
