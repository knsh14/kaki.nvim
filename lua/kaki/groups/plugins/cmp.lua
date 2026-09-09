return function(p)
  return {
    CmpItemAbbr = { fg = p.fg },
    CmpItemAbbrDeprecated = { fg = p.comment, strikethrough = true },
    CmpItemAbbrMatch = { fg = p.orange, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.orange, bold = true },
    CmpItemMenu = { fg = p.comment },
    CmpItemKindFunction = { fg = p.orange },
    CmpItemKindMethod = { fg = p.orange },
    CmpItemKindVariable = { fg = p.blue },
    CmpItemKindKeyword = { fg = p.yellow },
  }
end
