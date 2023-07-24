# My dotfiles
---
## Contents
### Just
Includes justfile with choco instructions for basic tool installation:
- ripgrep, nerdfonts, rancher desktop, ++
- includes just.exe to bootstrap installation of just

---
# Things to check
1. `:checkhealth`
- Ensure plugins are listed and make sure there are no `warnings`
2. `:TSInstall c` and `cpp` 
- Make sure clang (llvm) is installed, working, and available for nvim to build for nvim-treesitter 

### Neovim Plugins
#### [lazy.nvim](https://github.com/folke/lazy.nvim)
Plugin management, supports lazy loading
#### [catpuccin.lua](https://github.com/catppuccin/nvim)
The best theme, by far (specifically Macchiato)
#### [neo-tree.lua](https://github.com/nvim-neo-tree/neo-tree.nvim)
My favorite file-picker, even if plugins like [oil](https://github.com/stevearc/oil.nvim) are more "vim-like"
#### [leap.lua](https://github.com/ggandor/leap.nvim)
Like quickscope for fFtT, and on steroids
#### [mason.lua](https://github.com/williamboman/mason.nvim)
Package manager (like Lazy), but for LSP/formatting/linting tools
#### [quickscope.lua](https://github.com/unblevable/quick-scope)
Make same-line hops easier by highlighting unique characters on row
#### [telescope.lua](https://github.com/nvim-telescope/telescope.nvim)
Does a lot of things I don't even know about
#### [toggleterm.lua](https://github.com/akinsho/toggleterm.nvim)
Display a terminal easily
#### [vim-be-good.lua](https://github.com/ThePrimeagen/vim-be-good)
Practice movements
#### [which-key.lua](https://github.com/folke/which-key.nvim)
Display possible key combinations/movements as you type
#### [window-picker.lua](https://github.com/s1n7ax/nvim-window-picker)
Make switching/targeting windows easier
#### [colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
Display hex/HTML colors inline		
#### [lualine](https://github.com/nvim-lualine/lualine.nvim)
Displays a bottom status bar with nice information

## Things to do:
Install LSP

Enter :LspInstall followed by the name of the server you want to install
Example: :LspInstall pyright
Install language parser

Enter :TSInstall followed by the name of the language you want to install
Example: :TSInstall python
Install Debugger

Enter :DapInstall followed by the name of the debugger you want to install
Example: :DapInstall python
Manage plugins

## Use the Lazy plugin homepage and perform updates
Run :Lazy check to check for plugin updates
Run :Lazy update to apply any pending plugin updates
Run :Lazy clean to remove any disabled or unused plugins
Run :Lazy sync to update and clean plugins
