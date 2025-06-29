#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ln -sfnv "${SCRIPT_DIR}"/.zshrc ~
ln -sfnv "${SCRIPT_DIR}"/.config/ ~

curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh \
    | bash -s -- --repo rossmacarthur/sheldon --to ~/.local/bin