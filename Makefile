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
	@dry_run=$$(dotter deploy --dry-run 2>&1); \
	if [ -z "$$dry_run" ]; then \
		echo "Nothing to deploy."; \
	else \
		echo "$$dry_run"; \
		read -n 1 -p "Deploy? [y/N] " confirm; echo; \
		if [ "$$confirm" = "y" ] || [ "$$confirm" = "Y" ]; then \
			dotter deploy; \
		else \
			echo "Aborted."; \
			exit 1; \
		fi \
	fi

brew-sync:
	brew bundle dump --force
