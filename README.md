# PetersNeoVimConfig

This repository contains my personalized NeoVim configuration files, structured for modularity and optimized for programming, navigation, and productivity.

## Directory Structure
```
.
├── after
│   └── syntax
│       └── rust.vim       # Rust-specific syntax highlighting overrides.
├── init.lua               # Main configuration entry point.
├── lua
│   ├── before-writing.lua # Pre-save hooks or related functionality.
│   ├── key-mappings.lua   # Custom keybindings.
│   ├── lazy-setup.lua     # Lazy.nvim plugin manager setup.
│   ├── plugins            # Modular plugin configurations.
│   │   ├── alpha.lua
│   │   ├── autopairs.lua
│   │   ├── bufferline.lua
│   │   ├── catppuccin.lua
│   │   ├── completions.lua
│   │   ├── floaterm.lua
│   │   ├── gitsigns.lua
│   │   ├── indent-blankline.lua
│   │   ├── lazygit.lua
│   │   ├── lorem.lua
│   │   ├── lsp-config.lua
│   │   ├── lualine.lua
│   │   ├── maximizer.lua
│   │   ├── mini.lua
│   │   ├── neo-tree.lua
│   │   ├── none-ls.lua
│   │   ├── telescope.lua
│   │   └── treesitter.lua
│   ├── plugins.lua        # Plugin loading and setup.
│   └── vim-settings.lua   # General NeoVim settings.
```

## Features
- **LSP Integration**: Full support for Language Server Protocols for enhanced code navigation and completions.
- **Modular Configuration**: Plugins and settings are neatly organized in separate files.
- **Improved Navigation**: Tools like Telescope and Neo-tree for fast file and symbol search.
- **Custom Keybindings**: Efficient mappings to streamline development workflows.
- **Syntax Highlighting**: Powered by Treesitter and customized for Rust and other languages.
- **Plugin Management**: Lazy.nvim for easy plugin handling.

## Installation
1. Clone the repository into your NeoVim configuration directory:
   ```bash
   git clone https://github.com/peterkaczorowski/PetersNeoVimConfig.git ~/.config/nvim
   ```

2. Install the required plugins:
   Open NeoVim and run:
   ```vim
   :Lazy sync
   ```

3. Restart NeoVim to apply the configuration.

## Requirements
- **NeoVim**: Version 0.7 or higher.
- **Git**: For cloning the repository.
- **Node.js**: For plugins requiring Node.js support.
- **Python**: Ensure Python is installed for plugin dependencies.

## Contributing
Feel free to open issues or submit pull requests to improve this configuration.

## License
This configuration is open-sourced under the MIT License. See the [LICENSE](LICENSE) file for details.

