-- Legacy Vim syntax groups: the fallback for filetypes without a Tree-sitter
-- parser, and the default link target for undefined Tree-sitter captures.
-- Colors mirror the choices in treesitter.lua.
return function(p)
  return {
    Comment = { fg = p.comment, italic = true },

    Constant = { fg = p.orange },
    String = { fg = p.green },
    Character = { fg = p.green },
    Number = { fg = p.yellow },
    Boolean = { fg = p.yellow, bold = true },
    Float = { fg = p.yellow },

    Identifier = { fg = p.fg },
    Function = { fg = p.orange, bold = true },

    Statement = { fg = p.yellow },
    Conditional = { fg = p.yellow },
    Repeat = { fg = p.yellow },
    Label = { fg = p.yellow, italic = true },
    Operator = { fg = p.fg },
    Keyword = { fg = p.yellow },
    Exception = { fg = p.red },

    PreProc = { fg = p.yellow },
    Include = { fg = p.yellow, bold = true },
    Define = { fg = p.yellow, bold = true },
    Macro = { fg = p.orange, bold = true },
    PreCondit = { fg = p.yellow },

    Type = { fg = p.orange },
    StorageClass = { fg = p.yellow, italic = true },
    Structure = { fg = p.yellow },
    Typedef = { fg = p.yellow },

    Special = { fg = p.yellow },
    SpecialChar = { fg = p.yellow },
    Tag = { fg = p.orange },
    Delimiter = { fg = p.comment },
    SpecialComment = { fg = p.comment, italic = true },
    Debug = { fg = p.red },

    Underlined = { underline = true },
    Error = { fg = p.red },
    Todo = { fg = p.bg, bg = p.yellow, bold = true },

    -- Modern diff-content groups (:h hl-Added); diff filetype captures link here
    Added = { fg = p.green },
    Removed = { fg = p.red },
    Changed = { fg = p.blue },
  }
end
