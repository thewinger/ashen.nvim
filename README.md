# Ashen

<!-- ![](assets/preview.png) -->

Ashen is a warm colorscheme that evokes the feeling of embers sizzling out in an old fire pit. It features muted red & orange tones, plenty of grayscale, and hints of teal.

> [!WARNING]
> This plugin is still in early development: the palette and theming may be subject to change. There is no guarantee any current settings or colours will remain -- if you really miss something that was changed, please open an issue, so I may consider implementing it as an optional setting.

## Installation

Using [lazy.nvim](https://lazy.folke.io/):

```lua
{
 "ficcdaf/ashen.nvim",
 lazy = false,
 priority = 1000,
}
```

You can load Ashen anywhere in your Neovim configuration:

```lua
vim.cmd("colorscheme ashen")
-- You may call the load function as well
require("ashen").load()
```

If you're using [LazyVim](https://www.lazyvim.org/), I recommend the following:

```lua
-- in lua/plugins/colorscheme.lua
return {
  { "ficcdaf/ashen.nvim" },

  -- Configure LazyVim to load Ashen
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ashen",
    },
  }
}
```

## Plugins

> [!WARNING]
> The following plugin list and configuration tips are incomplete! Please check `lua/ashen/plugins` for a more accurate list of supported plugins. I will endeavour to update this list frequently.

Many plugins are already "supported" because they use standard Neovim highlight groups. However, some plugins require bespoke support. Additionally, some plugins may require extra setup to look good with Ashen. Please see [Configuration](#configuration) for more details.

Ashen explicitly supports the following plugins:

- blink.cmp
- nvim-cmp
- flash.nvim
- lualine
- mini.icons
- trailblazer.nvim
- obsidian.nvim
- oil.nvim
- render-markdown.nvim
- telescope.nvim
- minimap.vim

## Configuration

### Lualine

Ashen comes with a preconfigured Lualine theme that includes a word counter for Markdown, Text, and Latex files, as well as optional [noice.nvim](https://github.com/folke/noice.nvim) and [pomo.nvim](https://github.com/epwalsh/pomo.nvim) support (if you have those plugins installed.) The following is an example of how to configure Lualine to use Ashen:

```lua
return {
  "nvim-lualine/lualine.nvim",
  -- ensure Ashen is loaded first
  dependencies = {
    "ficcdaf/ashen.nvim",
  },
  opts = function()
    local ashen = require("ashen.plugins.lualine").lualine_opts
    -- you can set any other options
    -- expected by lualine, since this
    -- table will be passed directly to `setup`
    ashen.extensions = { "lazy", "fzf" }
    return ashen
  end,
}
```

### Trailblazer.nvim

Trailblazer tends to overwrite the highlight groups set by Ashen. Therefore, you may need to invoke Ashen's Trailblazer setup immediately _after_ loading Trailblazer. Please see the following example:

```lua
return {
  "LeonHeidelbach/trailblazer.nvim",
  event = "UIEnter",
  -- ensure Ashen is loaded first
  dependencies = {
    "ficcdaf/ashen.nvim",
  },
  config = function()
    require("trailblazer").setup({
      -- your Trailblazer setup here
    })
    -- This ensures Ashen's HL groups are set up
    -- AFTER Trailblazer sets its own.
    require("ashen.plugins").setup("trailblazer")
  end,
}
```

### Render-markdown.nvim

Ashen will support render-markdown OOTB with no additional configuration. You may optionally consider including the following icons in your setup. Note they may not render properly in all browsers.

```lua
-- as part of render-markdown.nvim setup
opts = {
  bullet = {
    -- cleaner bullet points
    icons = { "•", "∙" },
  },
  heading = {
    -- Icons that say H1, H2, etc.
    icons = { "󰉫 ", "󰉬 ", "󰉭 ", "󰉮 ", "󰉯 ", "󰉰 " },
  },

}
```

## Acknowledgements

Ashen was inspired by [nvim-noirbuddy](https://github.com/jesseleite/nvim-noirbuddy).
