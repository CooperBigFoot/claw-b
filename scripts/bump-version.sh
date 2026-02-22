#!/usr/bin/env bash
set -euo pipefail

CARGO_TOML="Cargo.toml"

if [[ ! -f "$CARGO_TOML" ]]; then
  echo "error: $CARGO_TOML not found" >&2
  exit 1
fi

current=$(grep '^version' "$CARGO_TOML" | head -1 | sed 's/.*"\(.*\)"/\1/')
IFS='.' read -r major minor patch <<< "$current"

case "${1:-patch}" in
  major) major=$((major + 1)); minor=0; patch=0 ;;
  minor) minor=$((minor + 1)); patch=0 ;;
  patch) patch=$((patch + 1)) ;;
  *) echo "usage: $0 [major|minor|patch]" >&2; exit 1 ;;
esac

new="$major.$minor.$patch"
sed -i '' "s/^version = \"$current\"/version = \"$new\"/" "$CARGO_TOML"
echo "$current -> $new"
