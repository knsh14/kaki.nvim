return function(p)
  return {
    TelescopeMatching = { fg = p.orange, bold = true },
    TelescopeSelection = { fg = p.orange, bg = p.bg_gray, bold = true },
    TelescopeSelectionCaret = { fg = p.orange, bg = p.bg_gray },
    TelescopePromptNormal = { fg = p.fg, bg = p.bg_gray },
    TelescopePromptBorder = { fg = p.bg_gray, bg = p.bg_gray },
    TelescopePromptTitle = { fg = p.bg, bg = p.orange, bold = true },
    TelescopeNormal = { fg = p.fg, bg = p.bg },
    TelescopeBorder = { fg = p.border, bg = p.bg },
    TelescopeResultsTitle = { fg = p.bg, bg = p.blue, bold = true },
    TelescopePreviewTitle = { fg = p.bg, bg = p.green, bold = true },
  }
end
