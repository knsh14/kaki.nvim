# 🍊 kaki.nvim

A dark colorscheme for Neovim named after the kaki (柿, Japanese persimmon), built around a vivid orange accent.

- **orange** `#f08c3a` — a vivid orange like the persimmon fruit (main accent)
- **green** `#9dbf7b` — a calm, yellow-tinged green like persimmon leaves
- **yellow** `#e5c05e` — a restrained mustard yellow
- **blue** `#6da5d6` — a desaturated blue, the only cool color, used to make the orange stand out

## Requirements

- Neovim 0.9+ (uses `vim.api.nvim_set_hl` and Tree-sitter capture groups)
- A terminal with true color support

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "knsh14/kaki.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("kaki")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "knsh14/kaki.nvim",
  config = function()
    vim.cmd.colorscheme("kaki")
  end,
})
```

### vim-plug

```vim
Plug 'knsh14/kaki.nvim'
```

```vim
colorscheme kaki
```

## Usage

```lua
vim.cmd.colorscheme("kaki")
```

Or directly via the Lua API:

```lua
require("kaki").load()
```

## Supported plugins

- Tree-sitter (with language-specific tuning for Python / C++ / Go / Rust / Lua / Bash / Markdown / JSON / YAML / TOML)
- LSP Diagnostics
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)

## Structure

```
kaki.nvim/
├── colors/
│   └── kaki.lua            -- entry point for :colorscheme kaki
└── lua/
    └── kaki/
        ├── init.lua        -- load() / setup()
        ├── palette.lua     -- color palette
        └── groups/
            ├── init.lua    -- merges all modules into a single table
            ├── editor.lua  -- editor UI and diagnostics
            ├── treesitter.lua -- common Tree-sitter capture groups
            ├── languages/  -- language-specific tuning (one file per language)
            └── plugins/    -- plugin-specific groups (one file per plugin)
```

To add support for a language or plugin, create a file under `languages/` or `plugins/` and add it to the list in `groups/init.lua`.

## License

MIT
