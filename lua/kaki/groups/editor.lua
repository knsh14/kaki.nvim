-- Core editor UI (centered on orange) and diagnostics
return function(p)
  return {
    Normal = { fg = p.fg, bg = p.bg },
    NormalFloat = { fg = p.fg, bg = p.bg_gray },
    CursorLine = { bg = p.bg_gray },
    CursorLineNr = { fg = p.orange, bold = true },
    LineNr = { fg = p.comment },
    VertSplit = { fg = p.border },
    WinSeparator = { fg = p.border },
    Visual = { bg = p.border },
    Search = { fg = p.bg, bg = p.orange },
    IncSearch = { fg = p.bg, bg = p.yellow },
    Title = { fg = p.orange, bold = true },
    Directory = { fg = p.blue },

    DiagnosticError = { fg = p.red },
    DiagnosticWarn = { fg = p.yellow },
    DiagnosticInfo = { fg = p.blue },
    DiagnosticHint = { fg = p.green },
    DiagnosticUnderlineError = { sp = p.red, undercurl = true },
  }
end
