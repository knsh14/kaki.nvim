return function(p)
  return {
    ["@keyword.function.go"] = { fg = p.yellow },               -- func
    ["@keyword.import.go"] = { fg = p.yellow, bold = true },    -- import, package
    ["@keyword.coroutine.go"] = { fg = p.orange, bold = true }, -- the go keyword (make the start of concurrency stand out)
    ["@keyword.return.go"] = { fg = p.orange },                 -- return (highlighted since early returns are common)
    ["@type.builtin.go"] = { fg = p.blue, italic = true },      -- string, error, int
    ["@function.builtin.go"] = { fg = p.orange, bold = true },  -- make, append, panic
    ["@variable.builtin.go"] = { fg = p.yellow, bold = true },  -- nil
  }
end
