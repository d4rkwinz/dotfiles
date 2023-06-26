# dotfiles


## Submodule

```
# Periodically run to update submodules to latest version
git submodule update --init --remote
```

## Nerd Font
* [JetBrains font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf)

### Install

```
brew install neovim

ln -s $PWD ~/.config/nvim
```

### Language Server Protocol Implementations

* [Go: gopls](https://github.com/golang/tools/tree/master/gopls)
```
go install golang.org/x/tools/gopls@latest
```

* [Python](https://github.com/microsoft/pyright)

```
brew install pyright
```

## GitConfig

```
git config --edit --global

```

Add this line

```
[include]
  path = ~/path/to/custom/config
```
