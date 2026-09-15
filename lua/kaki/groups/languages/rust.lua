return function(p)
  return {
    ["@keyword.import.rust"] = { fg = p.yellow }, -- use
    ["@function.macro.rust"] = { fg = p.orange, bold = true }, -- macros like println!
    ["@type.builtin.rust"] = { fg = p.orange, italic = true }, -- i32, String, etc.
    ["@attribute.rust"] = { fg = p.blue }, -- #[derive(...)]
  }
end
