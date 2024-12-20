# NeoVIM

## How to use a non-default folder for the config

```powershell
$env:XDG_CONFIG_HOME = "C:\source\github\flatrick\neovim_profile\"
```

## Dependencies outside of NeoVim

- [Zig Compiler](https://ziglang.org/download/)
- [CMake Compiler](https://cmake.org/download/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- [fzf](https://github.com/junegunn/fzf)

## Plugins used

- Lazy
- telescope
- telescope-fzf-native
- nvim-treesitter
- neotree
- mason / mason-lspconfig
- nvim-web-devicons
- todo-comments

## NeoVIM config

This is my attempt to get started with NeoVim, so we'll see how well it goes :)

### 2024-11-04

NeoVim isn't for the fainthearted when you want to set it up to your own exact wishes,
so instead of getting stuck on figuring things out for now, I've opted for [NvChad](https://nvchad.com/) as my initial learning grounds.

I really don't want to use these pre-configured NeoVim-distrobutions, not because they're bad, 
but because I do want to learn how to make NeoVim suit my unique needs as I figure out what those are.
But, I also really want to get started coding in Rust and so I've admitted defeat until I've gotten a better hang of NeoVim and setting it up.

## Useful links on NeoVim/Vim/Vi

- [Learn Vimscript the Hard Way - Leaders](https://learnvimscriptthehardway.stevelosh.com/chapters/06.html)

### Settings

- [vim.opt](https://neovim.io/doc/user/lua.html#vim.opt)
- [vim.o](https://neovim.io/doc/user/lua.html#vim.o)
- [vim.wo](https://neovim.io/doc/user/lua.html#vim.wo)
- [vim.bo](https://neovim.io/doc/user/lua.html#vim.bo)
- [vim.go](https://neovim.io/doc/user/lua.html#vim.go)

## Useful links on Lua

- [Lua - Neovim docs](https://neovim.io/doc/user/lua.html)
- [Lua-guide - Neovim docs](https://neovim.io/doc/user/lua-guide.html)
