# dotfiles

Personal `~/.config` — terminals, editor, shell prompt, and git defaults.
Lives directly at `$XDG_CONFIG_HOME`, so most tools pick up their config with zero symlinks.

## What's inside

| Path             | Tool                | Purpose                          |
| ---------------- | ------------------- | -------------------------------- |
| `alacritty/`     | Alacritty           | GPU terminal                     |
| `ghostty/`       | Ghostty             | GPU terminal                     |
| `cmux/`          | cmux                | terminal for parallel AI agents  |
| `zellij/`        | Zellij              | terminal multiplexer             |
| `nvim/`          | Neovim (LazyVim)    | editor — git submodule           |
| `starship/`      | Starship            | shell prompt                     |
| `git/ignore`     | git                 | global ignore (auto-loaded)      |
| `gitconfig/custom` | git               | aliases (needs include, below)   |

## Setup

```sh
git clone --recurse-submodules git@github.com:d4rkwinz/dotfiles.git ~/.config
```

Already cloned without submodules:

```sh
git -C ~/.config submodule update --init --recursive
```

Update the nvim submodule to its latest:

```sh
git -C ~/.config submodule update --remote nvim
```

### git aliases

`git/ignore` loads automatically (XDG default). To enable `gitconfig/custom`, add to `~/.gitconfig`:

```ini
[include]
    path = ~/.config/gitconfig/custom
```

### Font

[JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts) — `brew install --cask font-jetbrains-mono-nerd-font`
