local p = require("kaki.palette")

return {
  normal = {
    a = { fg = p.bg, bg = p.orange, gui = "bold" },
    b = { fg = p.fg, bg = p.border },
    c = { fg = p.fg, bg = p.bg_gray },
  },
  insert = {
    a = { fg = p.bg, bg = p.green, gui = "bold" },
  },
  visual = {
    a = { fg = p.bg, bg = p.yellow, gui = "bold" },
  },
  replace = {
    a = { fg = p.bg, bg = p.red, gui = "bold" },
  },
  command = {
    a = { fg = p.bg, bg = p.blue, gui = "bold" },
  },
  inactive = {
    a = { fg = p.comment, bg = p.bg_gray },
    b = { fg = p.comment, bg = p.bg_gray },
    c = { fg = p.comment, bg = p.bg_gray },
  },
}
