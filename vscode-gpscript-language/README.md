# GPScript Language Support (Local)

This local VS Code extension provides:

- `.gpscript` language registration
- TextMate syntax highlighting for GPScript
- Language config for pairing, block indentation, and folding

## Official Docs Basis

Tokenization rules are based on GPScript documentation:

- Language constructs (comments, constants, declarations)
- Official callback names
- Official type names
- Function/call syntax pattern

Docs:

- [Language Constructs in Detail](https://gigperformer.com/docs/GPScript41/content/language-manual/40-language-constructs.html)
- [List of Callbacks](https://gigperformer.com/docs/GPScript41/content/reference/list-of-callbacks.html)
- [List of Types](https://gigperformer.com/docs/GPScript41/content/reference/list-of-types.html)
- [List of Functions](https://gigperformer.com/docs/GPScript41/content/reference/list-of-functions.html)

## Use In VS Code

1. Open this folder as part of your workspace.
2. Open `vscode-gpscript-language` in VS Code.
3. Run command: `Developer: Install Extension from Location...`
4. Select folder: `vscode-gpscript-language`
5. Re-open any `.gpscript` file.

## Local Install Script (CLI)

If you prefer command-line install:

1. From `vscode-gpscript-language`, run: `npm run install:local`
2. This will package the extension as a `.vsix` and install it via `code --install-extension`.

Notes:

- Requires Node.js/npm.
- Requires VS Code CLI (`code`) in your PATH.

If language mode does not switch automatically, run `Change Language Mode` and select `GPScript`.

## Optional: Stronger Token Colors

If you want GPScript to stand out more, use the included preset:

- `gpscript-token-color-customizations.json`

How to apply:

1. Open VS Code settings JSON (`Preferences: Open User Settings (JSON)` or workspace settings JSON).
2. Copy the contents of `gpscript-token-color-customizations.json`.
3. Paste/merge into your settings JSON.

This file targets the TextMate scopes defined in `syntaxes/gpscript.tmLanguage.json` (keywords, types, callbacks, functions, numbers, booleans, strings, comments, and SysEx constants).

## Troubleshooting

If it still does not work:

1. Confirm the file language mode is `GPScript` (status bar, bottom-right).
2. Run `Developer: Reload Window` after installing the extension from location.
3. Ensure the filename ends with `.gpscript`.
4. If needed, run `Change Language Mode` and pick `GPScript` manually.
