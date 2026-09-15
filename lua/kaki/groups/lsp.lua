-- LSP semantic tokens (@lsp.*). Semantic tokens have higher priority than
-- Tree-sitter captures, so broad token types are cleared ({}) to let the
-- per-language Tree-sitter tuning win. Only tokens that add information
-- Tree-sitter cannot know (interfaces, default-library symbols, etc.) are
-- linked to captures.
return function(_)
  return {
    -- Cleared: Tree-sitter already handles these better
    ["@lsp.type.class"] = {},
    ["@lsp.type.comment"] = {},
    ["@lsp.type.enum"] = {},
    ["@lsp.type.function"] = {},
    ["@lsp.type.keyword"] = {},
    ["@lsp.type.method"] = {},
    ["@lsp.type.number"] = {},
    ["@lsp.type.operator"] = {},
    ["@lsp.type.string"] = {},
    ["@lsp.type.struct"] = {},
    ["@lsp.type.type"] = {},
    ["@lsp.type.variable"] = {},

    -- Linked: information only the language server can provide
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.macro"] = { link = "@function.macro" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.typeParameter"] = { link = "@type" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
  }
end
