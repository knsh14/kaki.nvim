return function(p)
  return {
    ["@keyword.function.python"] = { fg = p.yellow },               -- def, lambda
    ["@keyword.type.python"] = { fg = p.yellow },                   -- class
    ["@keyword.import.python"] = { fg = p.yellow, bold = true },    -- import, from, as
    ["@keyword.conditional.python"] = { fg = p.yellow },            -- if, elif, else, match, case
    ["@keyword.repeat.python"] = { fg = p.yellow },                 -- for, while
    ["@keyword.return.python"] = { fg = p.orange },                 -- return, yield (highlight early returns, as in Go)
    ["@keyword.coroutine.python"] = { fg = p.orange, bold = true }, -- async, await (treated like Go's `go`)
    ["@keyword.exception.python"] = { fg = p.red },                 -- try, except, raise, finally in red as a warning color
    ["@keyword.operator.python"] = { fg = p.yellow },               -- and, or, not, in, is

    ["@variable.builtin.python"] = { fg = p.yellow, italic = true }, -- self, cls
    ["@variable.parameter.python"] = { fg = p.fg, italic = true },   -- italic parameters to set them apart from body text
    ["@variable.member.python"] = { fg = p.blue },                   -- the foo in self.foo (properties are blue)
    ["@constant.python"] = { fg = p.orange },                        -- uppercase constants like MAX_SIZE
    ["@constant.builtin.python"] = { fg = p.yellow, bold = true },   -- None

    ["@function.method.python"] = { fg = p.orange, bold = true },
    ["@function.method.call.python"] = { fg = p.orange },
    ["@function.builtin.python"] = { fg = p.orange, bold = true },  -- print, len
    ["@attribute.python"] = { fg = p.blue },                        -- decorators
    ["@attribute.builtin.python"] = { fg = p.blue, italic = true }, -- @property, @staticmethod, etc.

    ["@string.documentation.python"] = { fg = p.comment, italic = true }, -- blend docstrings into comments to reduce noise
    ["@string.escape.python"] = { fg = p.yellow },                        -- escape sequences like \n and \t
    ["@punctuation.special.python"] = { fg = p.yellow },                  -- make the { } in f-strings stand out

    ["@type.builtin.python"] = { fg = p.blue, italic = true },    -- int, str, dict
    ["@type.python"] = { fg = p.orange, bold = true },            -- type hints and general class name references
    ["@type.definition.python"] = { fg = p.orange, bold = true }, -- class definitions (the Foo in class Foo:)
    ["@constructor.python"] = { fg = p.orange, bold = true },     -- instantiation (the Foo in Foo())
  }
end
