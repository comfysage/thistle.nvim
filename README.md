# thistle.nvim

## :sparkles: features

a quick and easy formatting plugin.

```lua
local ft = require("thistle.ft")
-- use formatters for your favourite languages
ft("lua"):use("stylua")
ft("nix"):use("nixfmt")

-- add a formatter for multiple languages
ft({ "html", "astro", "vue" }):use("prettier")

-- add a default formatter for all languages
ft("*"):use({
  cmd = "treefmt",
  args = function(params)
    local filename = vim.api.nvim_buf_get_name(params.buf)
    return { "--allow-missing-formatter", "--stdin", filename }
  end,
})
```

inspired by:
- [guard.nvim](https://github.com/nvimdev/guard.nvim) - Lightweight, fast and async formatting and linting plugin for Neovim

## :lock: requirements

- Neovim `>= 0.10.0`

## :package: installation

Thistle can be installed by adding *this* to your `lua/plugins/init.lua`:

```lua
{
  'comfysage/thistle.nvim',
  after = function()
    require 'thistle'.setup()
    vim.keymap.set('n', '<localleader>f', require('thistle').format)
  end,
}
```

## :gear: configuration

Below is the default configuration.

```lua
{
	globalopts = {
		format_on_save = true,
	},
	formatters = {},
	log_level = vim.log.levels.INFO,
}
```
