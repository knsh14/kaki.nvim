return function(p)
  return {
    LazyNormal = { fg = p.fg, bg = p.bg_gray },
    LazyBorder = { fg = p.border, bg = p.bg_gray },
    LazyProgressTodo = { fg = p.comment },
    LazyProgressDone = { fg = p.orange },
  }
end
