return function(p)
  return {
    PulseNormal = { fg = p.fg, bg = p.bg_gray },
    PulseBorder = { fg = p.border, bg = p.bg_gray },
    PulseTitle = { fg = p.bg, bg = p.orange, bold = true },
    PulsePrompt = { fg = p.fg, bg = p.bg_gray },
    PulseSelection = { fg = p.orange, bg = p.bg, bold = true },
    PulseMatch = { fg = p.orange, bold = true },
  }
end
