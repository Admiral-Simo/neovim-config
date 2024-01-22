# Neovim Configuration by Admiral-Simo

Welcome to my Neovim configuration! This setup is designed to enhance your Neovim experience with a curated selection of plugins and optimizations. Follow the steps below to get started.

## Installation

1. **Backup Existing Configuration (Optional)**:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

2. **Clone Configuration Repository**:

```bash
git clone https://github.com/Admiral-Simo/neovim-config ~/.config/nvim
```

3. **Install Packer (Plugin Manager)**:

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

4. **Open Neovim**:

```bash
nvim .
```

Ignore any errors during the initial launch.

5. **Install Plugins**:
Inside Neovim, run the following command:

```vim
:PackerSync
```

This will install all the required plugins.

6. **Enjoy Your Enhanced Neovim Experience!**

## Screenshots

_Add screenshots here to showcase your Neovim setup._

### Screenshot 1: Neovim UI
![Neovim UI](screenshots/neovim_ui.png)

### Screenshot 2: Code Editing
![Code Editing](screenshots/code_editing.png)

### Screenshot 3: Plugin Features
![Plugin Features](screenshots/plugin_features.png)

## Features

- **Plugin Integration**: Leveraging popular plugins for a seamless development experience.
- **Optimized Configuration**: Fine-tuned settings for performance and usability.
- **Custom Keybindings**: Intuitive key mappings for efficient code navigation and editing.
- **Beautiful Themes**: Stylish and eye-friendly themes for a pleasing aesthetic.

## Contributing

Feel free to contribute by opening issues or submitting pull requests.
