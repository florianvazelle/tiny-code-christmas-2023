#!/usr/bin/env -S just --justfile

# === Commands ===

# Display all commands
@default:
    echo "OS: {{ os() }} - ARCH: {{ arch() }}\n"
    just --list

# Install luacheck
@install-luacheck:
    luarocks install luacheck

# Run formatters
fmt: install-luacheck
    luacheck .