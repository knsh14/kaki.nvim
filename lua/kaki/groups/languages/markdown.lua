-- Markdown (orange headings so documents read as orange-based overall)
return function(p)
  return {
    ["@markup.heading"] = { fg = p.orange, bold = true },
    ["@markup.list"] = { fg = p.green },
    ["@markup.strong"] = { fg = p.orange, bold = true },
    ["@markup.italic"] = { fg = p.yellow, italic = true },
    ["@markup.link.label"] = { fg = p.blue, underline = true },
    ["@markup.link.url"] = { fg = p.comment, italic = true },
    ["@markup.quote"] = { fg = p.comment, italic = true },
    ["@markup.raw.block"] = { fg = p.fg, bg = p.bg_gray },
    ["@markup.raw.inline"] = { fg = p.orange, bg = p.bg_gray },
  }
end
