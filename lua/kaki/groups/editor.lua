-- Core editor UI (centered on orange) and diagnostics
return function(p)
  return {
    Normal = { fg = p.fg, bg = p.bg },
    NormalNC = { fg = p.fg, bg = p.bg },
    NormalFloat = { fg = p.fg, bg = p.bg_gray },
    FloatBorder = { fg = p.border, bg = p.bg_gray },
    FloatTitle = { fg = p.orange, bg = p.bg_gray, bold = true },
    CursorLine = { bg = p.bg_gray },
    CursorColumn = { bg = p.bg_gray },
    CursorLineNr = { fg = p.orange, bold = true },
    LineNr = { fg = p.comment },
    SignColumn = { fg = p.comment },
    FoldColumn = { fg = p.comment },
    Folded = { fg = p.comment, bg = p.bg_gray, italic = true },
    VertSplit = { fg = p.border },
    WinSeparator = { fg = p.border },
    WinBar = { fg = p.fg, bold = true },
    WinBarNC = { fg = p.comment },
    ColorColumn = { bg = p.bg_gray },
    Conceal = { fg = p.comment },
    NonText = { fg = p.border },
    Whitespace = { fg = p.border },
    SpecialKey = { fg = p.border },
    EndOfBuffer = { fg = p.border },
    MatchParen = { fg = p.orange, bold = true, underline = true },
    Visual = { bg = p.border },
    Search = { fg = p.bg, bg = p.orange },
    CurSearch = { fg = p.bg, bg = p.orange, bold = true },
    IncSearch = { fg = p.bg, bg = p.yellow },
    Substitute = { fg = p.bg, bg = p.yellow },
    QuickFixLine = { fg = p.orange, bg = p.bg_gray, bold = true },
    Title = { fg = p.orange, bold = true },
    Directory = { fg = p.blue },

    -- Statusline / tabline
    StatusLine = { fg = p.fg, bg = p.bg_gray },
    StatusLineNC = { fg = p.comment, bg = p.bg_gray },
    TabLine = { fg = p.comment, bg = p.bg_gray },
    TabLineSel = { fg = p.orange, bg = p.bg, bold = true },
    TabLineFill = { bg = p.bg_gray },

    -- Builtin completion menu (fallback when nvim-cmp is not in use)
    Pmenu = { fg = p.fg, bg = p.bg_gray },
    PmenuSel = { fg = p.orange, bg = p.border, bold = true },
    PmenuSbar = { bg = p.bg_gray },
    PmenuThumb = { bg = p.border },
    WildMenu = { fg = p.bg, bg = p.orange },

    -- Messages
    ErrorMsg = { fg = p.red },
    WarningMsg = { fg = p.yellow },
    MoreMsg = { fg = p.green },
    ModeMsg = { fg = p.fg, bold = true },
    Question = { fg = p.blue },

    -- Diff view (:diffsplit and friends)
    DiffAdd = { bg = p.bg_green },
    DiffDelete = { fg = p.comment, bg = p.bg_red },
    DiffChange = { bg = p.bg_blue },
    DiffText = { bg = p.bg_yellow, bold = true },

    -- Spell checking
    SpellBad = { sp = p.red, undercurl = true },
    SpellCap = { sp = p.yellow, undercurl = true },
    SpellLocal = { sp = p.blue, undercurl = true },
    SpellRare = { sp = p.green, undercurl = true },

    -- Diagnostics
    DiagnosticError = { fg = p.red },
    DiagnosticWarn = { fg = p.yellow },
    DiagnosticInfo = { fg = p.blue },
    DiagnosticHint = { fg = p.green },
    DiagnosticUnderlineError = { sp = p.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = p.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = p.blue, undercurl = true },
    DiagnosticUnderlineHint = { sp = p.green, undercurl = true },
  }
end
