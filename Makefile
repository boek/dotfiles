.PHONY: setup brew-sync

setup: homebrew brew-bundle dotter-setup dotter-deploy

homebrew:
	@if ! command -v brew >/dev/null 2>&1; then \
		echo "Installing Homebrew..."; \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
	else \
		echo "Homebrew already installed, skipping"; \
	fi

brew-bundle:
	@echo "Installing from Brewfile..."
	brew bundle --file=Brewfile

dotter-setup:
	@if [ ! -f .dotter/local.toml ]; then \
		cp .dotter/local.toml.example .dotter/local.toml; \
		echo "Created .dotter/local.toml from example"; \
	else \
		echo ".dotter/local.toml already exists, skipping"; \
	fi

dotter-deploy:
	@echo "Deploying dotfiles with Dotter..."
	dotter deploy

brew-sync:
	brew bundle dump --force
