#!/usr/bin/env bash

set -e

DOTS="$HOME/dots"
SRC="$HOME/.config"
DEST="$DOTS/.config"

INCLUDE=(
    "btop/"
    "doom/"
    "hypr/"
    "kitty/"
    "lvim/"
    "ranger/"
    "rofi/"
    "Thunar/"
    "swappy/"
    "swaync/"
    "waybar/"
    "wlogout/"
    "zathura/"
    "zed/"
)

mkdir -p "$DEST"

# Build includes
INCLUDES=()
for item in "${INCLUDE[@]}"; do
  INCLUDES+=( "--include=$item" )
done

# Rsync step
rsync -av --delete \
  "${INCLUDES[@]}" \
  --exclude='*' \
  "$SRC/" "$DEST/"

rsync -av "$HOME/.zshrc" ./

# --- Auto commit & push -----------------------------------

cd "$DOTS"

git add -A

if git diff --cached --quiet; then
    echo "No changes to commit."
else
    NOW=$(date '+%Y-%m-%d %H:%M:%S')
    git commit -m "Dotfiles update: $NOW"
    git push
    echo "Dotfiles synced, committed, and pushed."
fi
