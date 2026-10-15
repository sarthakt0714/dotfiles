# dotfiles

My macOS dev setup.

| Path | Goes to | What |
| --- | --- | --- |
| `nvim/` | `~/.config/nvim` | Neovim ([LazyVim](https://github.com/LazyVim/LazyVim)) |
| `starship/starship.toml` | `~/.config/starship.toml` | [Starship](https://starship.rs) prompt |
| `zsh/.zshrc` | `~/.zshrc` | zsh with oh-my-zsh, autosuggestions, syntax highlighting |

## Install

```sh
git clone https://github.com/sarthakt0714/dotfiles ~/dotfiles

brew install neovim starship ripgrep fd fzf lazygit tree-sitter-cli \
  zsh-autosuggestions zsh-syntax-highlighting

ln -sfn ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
```

Open `nvim` once and plugins, LSPs and parsers install themselves. See [`nvim/README.md`](nvim/README.md) for details.
