return function(p)
  return {
    GitSignsAdd = { fg = p.green },
    GitSignsChange = { fg = p.blue }, -- yellow would work too, but it collides with warnings, so blue
    GitSignsDelete = { fg = p.red },
  }
end
