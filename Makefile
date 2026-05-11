.PHONY: setup

setup:
	@if [ ! -f .dotter/local.toml ]; then \
		cp .dotter/local.toml.example .dotter/local.toml; \
		echo "Created .dotter/local.toml from example"; \
	else \
		echo ".dotter/local.toml already exists, skipping"; \
	fi
