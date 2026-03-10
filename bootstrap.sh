#!/usr/bin/env bash

set -e

echo "DotSync - Bootstrap your development environment"

# Detect OS
detect_os() {
    case "$(uname -s)" in
        Linux*)
            if [ -f /etc/os-release ]; then
                . /etc/os-release
                echo "$ID"
            else
                echo "linux"
            fi
            ;;
        Darwin*)
            echo "macos"
            ;;
        FreeBSD*)
            echo "freebsd"
            ;;
        *)
            echo "unknown"
            ;;
    esac
}

OS=$(detect_os)
echo "Detected OS: $OS"

# Check for required tools
check_tool() {
    if ! command -v "$1" &> /dev/null; then
        echo "Error: $1 is not installed"
        exit 1
    fi
}

echo "Checking prerequisites..."
check_tool git

# TODO: Install chezmoi
# TODO: Install ansible
# TODO: Run ansible playbook
# TODO: Apply chezmoi dotfiles

echo "Bootstrap complete!"
