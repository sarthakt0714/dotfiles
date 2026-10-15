# Neovim config

[LazyVim](https://github.com/LazyVim/LazyVim) setup for TypeScript / NestJS, Go, Flutter and infra work.

## What's in it

- **Theme**: catppuccin mocha, transparent background, custom dashboard logo
- **Completion**: blink.cmp with super-tab (`Tab` accepts / jumps snippets)
- **Languages**: TypeScript (vtsls, eslint, prettier), Go (gopls, gofumpt, golangci-lint), Dart / Flutter (flutter-tools), Python, Rust, Prisma, SQL, Tailwind, Markdown, TOML
- **Infra**: Docker + compose (hadolint), Helm, Terraform (tflint), YAML with schemas, bash (shellcheck, shfmt)
- **Tooling**: debugger (DAP), test runner (neotest), REST client (kulala), DB UI (dadbod), lazygit, yank history

## Layout

| File | Purpose |
| --- | --- |
| `lazyvim.json` | Enabled LazyVim extras; toggle with `:LazyExtras` |
| `lua/config/options.lua` | Editor options (4-space indent, relative numbers) |
| `lua/config/keymaps.lua` | Custom keymaps |
| `lua/plugins/colorscheme.lua` | catppuccin |
| `lua/plugins/dashboard.lua` | Dashboard logo |
| `lua/plugins/completion.lua` | Super-tab completion |
| `lua/plugins/flutter.lua` | flutter-tools + `<leader>F` keymaps |
| `lua/plugins/infra.lua` | Extra Mason tools, parsers and linters for infra |
| `lazy-lock.json` | Pinned plugin versions |

## Requirements

Neovim 0.11+, git, a Nerd Font, and:

```sh
brew install ripgrep fd fzf lazygit tree-sitter-cli
brew install --cask flutter   # for Dart / Flutter
```

## Keymaps worth knowing

Leader is `Space`; press it and wait for the which-key menu. `<leader>sk` searches all keymaps.

| Key | Action |
| --- | --- |
| `<leader><space>` / `<leader>/` | Find file / grep |
| `<leader>e` | File explorer |
| `gd` / `gr` / `K` | Definition / references / hover |
| `<leader>ca` / `<leader>cr` | Code action / rename |
| `<leader>gg` | Lazygit |
| `<leader>db` / `<leader>dc` | Breakpoint / start debugging |
| `<leader>tr` / `<leader>tt` | Run nearest test / test file |
| `<leader>Rs` | Send HTTP request (`.http` files) |
| `<leader>Fr` / `<leader>Fl` | Flutter run / hot reload |

## Updating

`:Lazy` then `U` for plugins, `:Mason` then `U` for LSPs and tools, `:TSUpdate` for parsers. Commit `lazy-lock.json` afterwards.
