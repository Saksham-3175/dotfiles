#!/usr/bin/env bash
set -e

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing dev tools..."
sudo apt install -y zsh build-essential

echo "Installing uv..."
curl -Ls https://astral.sh/uv/install.sh | sh

echo "Setting Zsh as default shell..."
chsh -s $(which zsh)

# Install Oh My Zsh (unattended)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "Installing core dev packages..."


sudo apt update

sudo apt install -y \
	build-essential \
	curl \
 	wget \
	git \
	unzip \
	zip \
	software-properties-common \
	apt-transport-https \
	ca-certificates \
	gnupg \
	lsb-release	

echo "Setting up Git Quality of Life..."
git config --global init.defaultBranch main
git config --global pull.rebase false

echo "Creating symlinks for dotfiles..."
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/zsh/.aliases ~/.aliases
ln -sf ~/dotfiles/zsh/.export ~/.exports
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig

echo "Bootstrap Complete. Restart Terminal."

