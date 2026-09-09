return function(p)
  return {
    NvimTreeNormal = { fg = p.fg, bg = p.bg },
    NvimTreeFolderName = { fg = p.blue },
    NvimTreeFolderIcon = { fg = p.blue },
    NvimTreeOpenedFolderName = { fg = p.blue, bold = true, italic = true },
    NvimTreeIndentMarker = { fg = p.border },
    NvimTreeGitDirty = { fg = p.yellow },
    NvimTreeGitNew = { fg = p.green },
    NvimTreeGitDeleted = { fg = p.red },
  }
end
