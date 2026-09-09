-- Common Tree-sitter capture groups (the language-agnostic base)
return function(p)
  return {
    ["@variable"] = { fg = p.fg },
    ["@variable.member"] = { fg = p.fg },
    ["@variable.parameter"] = { fg = p.fg },

    ["@function"] = { fg = p.orange, bold = true },
    ["@function.call"] = { fg = p.orange },
    ["@constructor"] = { fg = p.blue },

    ["@keyword"] = { fg = p.yellow },
    ["@type"] = { fg = p.orange }, -- types in orange too, to reinforce the main accent
    ["@module"] = { fg = p.blue },

    ["@string"] = { fg = p.green },
    ["@number"] = { fg = p.yellow },
    ["@boolean"] = { fg = p.yellow, bold = true },

    ["@operator"] = { fg = p.fg },
    ["@punctuation.delimiter"] = { fg = p.comment },
    ["@punctuation.bracket"] = { fg = p.comment },
    ["@comment"] = { fg = p.comment, italic = true },
    ["@property"] = { fg = p.blue }, -- object properties in blue to set them apart
  }
end
