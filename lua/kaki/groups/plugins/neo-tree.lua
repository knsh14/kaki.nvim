return function(p)
  return {
    NeoTreeNormal = { fg = p.fg, bg = p.bg },
    NeoTreeNormalNC = { fg = p.fg, bg = p.bg },
    NeoTreeDirectoryName = { fg = p.blue },
    NeoTreeDirectoryIcon = { fg = p.blue },
    NeoTreeRootName = { fg = p.orange, bold = true },
    NeoTreeFileName = { fg = p.fg },
    NeoTreeOpenedFile = { fg = p.orange, bold = true },
    NeoTreeIndentMarker = { fg = p.border },
    NeoTreeExpander = { fg = p.border },
    NeoTreeDotfile = { fg = p.comment },

    NeoTreeGitAdded = { fg = p.green },
    NeoTreeGitConflict = { fg = p.red, bold = true },
    NeoTreeGitDeleted = { fg = p.red },
    NeoTreeGitIgnored = { fg = p.comment },
    NeoTreeGitModified = { fg = p.blue },
    NeoTreeGitUntracked = { fg = p.yellow },
  }
end
