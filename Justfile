#!/usr/bin/env -S just --justfile

export PIP_REQUIRE_VIRTUALENV := "true"

# === Variables ===

# Python virtualenv
venv_dir := justfile_directory() / "venv"

# === Commands ===

# Display all commands
@default:
    echo "OS: {{ os() }} - ARCH: {{ arch() }}\n"
    just --list

# Python virtualenv wrapper
[private]
@venv *ARGS:
    [ ! -d {{ venv_dir }} ] && python3 -m venv {{ venv_dir }} || true
    . {{ venv_dir }}/bin/activate && {{ ARGS }}

# Run files formatters
fmt:
    just venv pip install pre-commit==3.3.3
    just venv pre-commit run -a
