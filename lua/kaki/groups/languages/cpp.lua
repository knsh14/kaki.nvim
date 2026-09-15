return function(p)
  return {
    ["@keyword.import.cpp"] = { fg = p.yellow, bold = true }, -- #include
    ["@keyword.directive.cpp"] = { fg = p.yellow }, -- #pragma, #if, #endif, etc.
    ["@keyword.directive.define.cpp"] = { fg = p.yellow, bold = true }, -- #define

    ["@keyword.type.cpp"] = { fg = p.yellow }, -- class, struct, enum, namespace, template, typename, using
    ["@keyword.modifier.cpp"] = { fg = p.yellow, italic = true }, -- const, static, constexpr, virtual, override
    ["@keyword.conditional.cpp"] = { fg = p.yellow }, -- if, else, switch, case
    ["@keyword.repeat.cpp"] = { fg = p.yellow }, -- for, while, do
    ["@keyword.return.cpp"] = { fg = p.orange }, -- return (highlighted, as in Go)
    ["@keyword.coroutine.cpp"] = { fg = p.orange, bold = true }, -- co_await, co_yield, co_return
    ["@keyword.exception.cpp"] = { fg = p.red }, -- try, catch, throw in red as a warning color
    ["@keyword.operator.cpp"] = { fg = p.yellow }, -- new, delete, sizeof, operator

    ["@variable.builtin.cpp"] = { fg = p.yellow, italic = true }, -- this
    ["@variable.parameter.cpp"] = { fg = p.fg, italic = true }, -- italic parameters to set them apart from body text
    ["@variable.member.cpp"] = { fg = p.blue }, -- member variables (obj.foo, this->foo)
    ["@constant.cpp"] = { fg = p.orange }, -- uppercase constants and enum values
    ["@constant.builtin.cpp"] = { fg = p.yellow, bold = true }, -- nullptr, NULL
    ["@constant.macro.cpp"] = { fg = p.orange, bold = true }, -- uppercase macro constants

    ["@function.method.cpp"] = { fg = p.orange, bold = true },
    ["@function.method.call.cpp"] = { fg = p.orange },
    ["@function.macro.cpp"] = { fg = p.orange, bold = true }, -- macro functions like assert()
    ["@constructor.cpp"] = { fg = p.orange, bold = true }, -- constructors / destructors

    ["@module.cpp"] = { fg = p.blue }, -- namespaces like std::
    ["@type.cpp"] = { fg = p.orange }, -- class names and template arguments
    ["@type.builtin.cpp"] = { fg = p.blue, italic = true }, -- primitive types like int, bool, size_t
    ["@attribute.cpp"] = { fg = p.blue }, -- [[nodiscard]], [[maybe_unused]]

    ["@string.escape.cpp"] = { fg = p.yellow }, -- escape sequences like \n and \0
    ["@character.cpp"] = { fg = p.green }, -- character literals like 'a'
    ["@label.cpp"] = { fg = p.yellow, italic = true }, -- goto labels
  }
end
