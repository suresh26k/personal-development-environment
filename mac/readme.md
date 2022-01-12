## VSCODE

### Install `code` to `$PATH`
https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line

### Settings

```json
{
    "python.formatting.provider": "black",          // Set python formatter as black
    "python.formatting.blackPath": "black -S",      // Ignore quotes conversion in black
    "window.zoomLevel": 1,                          // Zoom screen - default is zero
    "python.analysis.typeCheckingMode": "basic",    // Other options are - basic and off 
    "vim.smartRelativeLine": true,                  // Shows relative line numbers - helps to jump to specific lines - LineNumber + "j"
    "editor.multiCursorModifier": "ctrlCmd",        // Helps to modify multiple lines
    "workbench.colorCustomizations": {
        // "tab.activeBackground": "#d79b05",       // Tab Background
        "tab.activeBorderTop": "#ff8400",           // Tab Border Top      
        "tab.activeBorder": "#ff8400",              // Tab Border  
        "tab.activeForeground": "#ffcb72",          // Tab Foreground      
        "titleBar.activeBackground": "#342a1b"      // Tab Background          
    },
    "autoDocstring.docstringFormat": "google",       // Google docs format
    "editor.codeActionsOnSave": {
        "source.organizeImports": true              // Organises/sorts python imports
    },
    // "python.linting.pylintCategorySeverity.warning": "Error",
    "editor.renderLineHighlight": "all",            // Highlights current line
    "editor.renderWhitespace": "all",               // Shows white spaces
    "aws.telemetry": false,                         // Stops sending anonymous data to AWS
    "files.exclude": {
        "**/.git": true,
        "**/.svn": true,
        "**/.hg": true,
        "**/CVS": true,
        "**/.DS_Store": true,
        "**/Thumbs.db": true,
        // "**/.venv": true,
    },
    "search.exclude": {
        "**/node_modules": true,
        "**/.venv": true,
        "**/*.code-search": true
    },

}
```
## ITERM 2
|||
|-|-|
|Drop Down|https://blog.mestwin.net/drop-down-terminal-in-macos-with-iterm2/|


## AWS
- Installation - https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

## NodeJS
https://nodejs.org/en/download/

