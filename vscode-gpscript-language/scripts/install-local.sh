#!/usr/bin/env bash

# This script packages the extension as a VSIX file and installs it locally using the VS Code CLI. This was only tested on macOS (15.7.4)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$EXT_DIR"

if command -v code >/dev/null 2>&1; then
  CODE_CMD="code"
elif command -v code-insiders >/dev/null 2>&1; then
  CODE_CMD="code-insiders"
else
  echo "Error: VS Code CLI not found. Install 'code' from VS Code Command Palette: Shell Command: Install 'code' command in PATH." >&2
  exit 1
fi

rm -f ./*.vsix

echo "Packaging extension as VSIX..."
npx --yes @vscode/vsce package

VSIX_PATH="$(ls -t ./*.vsix | head -n 1)"

echo "Installing $VSIX_PATH via $CODE_CMD..."
"$CODE_CMD" --install-extension "$VSIX_PATH" --force

echo "Done. Reload VS Code if the extension is not picked up immediately."
