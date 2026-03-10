# DotSync

Sync dotfiles and configure development environments across multiple Unix-like systems with a single command.

## Overview

DotSync is a bootstrap tool that automatically configures a new machine with your preferred development environment. It uses:

- **Chezmoi** - Manage dotfiles (`.bashrc`, `.zshrc`, `.gitconfig`, etc.)
- **Ansible** - Handle OS-specific package installation
- **Shell scripting** - Single entry point for bootstrapping

## Supported Operating Systems

- macOS
- FreeBSD
- Fedora
- Ubuntu/Debian
- Arch Linux

## Quick Start

```bash
# Clone the repository
git clone https://github.com/absenth/dotsync.git
cd dotsync

# Run the bootstrap script
./bootstrap.sh
```

## Requirements

- Git
- Bash or Zsh
- For package management: Homebrew (macOS), apt (Debian/Ubuntu), dnf (Fedora), pacman (Arch), pkg (FreeBSD)

## Features

- Automatic detection of operating system
- Cross-platform dotfile management via Chezmoi
- OS-specific package installation
- One-command full environment setup

## License

See [LICENSE](LICENSE) for details.
