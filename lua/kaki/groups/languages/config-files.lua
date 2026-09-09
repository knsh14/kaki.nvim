-- JSON / YAML / TOML (config file formats)
return function(p)
  return {
    ["@label.json"] = { fg = p.blue }, -- unify keys in blue
    ["@property.yaml"] = { fg = p.blue },
    ["@property.toml"] = { fg = p.blue },
  }
end
