<div align="center">

# WSL2 Open Windows Browser

#### Easily open files and websites in a Windows web browser from WSL CLI.

<img alt="WSL2 Terminal opening browser" src="assets/wsl-open-win-browser-demo.gif" style="border-radius: 10px" />

</div>

## Why use this?

Whilst some linux distros include a Snap install of Firefox by default; it holds up your terminal while running meaning you either need to close the browser or run multiple instances of WSL2. In my experience, it also doesn't run very well. I'd much prefer to use my every day browsers in Windows.

This project provides a simple way to open files or URLs in your favourite browsers directly from the CLI.

## Installation

To install these commands, we will need to add them to our .bashrc or .zshrc files.
_If you're unsure which shell you're using, run:_

```
echo $SHELL
```

Then, run the corresponding command:

### BASH

```sh
curl -s https://raw.githubusercontent.com/reillyfeatherstone/wsl-open-win-browser/main/wsl-open-win-browser.sh >> ~/.bashrc && source ~/.bashrc
```

### ZSH

```sh
curl -s https://raw.githubusercontent.com/reillyfeatherstone/wsl-open-win-browser/main/wsl-open-win-browser.sh >> ~/.zshrc && source ~/.zshrc
```

## Commands

The commands are super simple!

### Basic Syntax

`<browser> [file_path|dir_path|url]`

### Google Chrome

- `chrome` - Opens a new chrome window
- `chrome <file_path>` - Opens specified file in chrome
- `chrome <dir_path>` - Opens specified directory in chrome
- `chrome <url>` - If the command can't find a corresponding file/directory at the path provided, it will presume you're requesting a URL.

### Mozilla Firefox

- `firefox` - Opens a new firefox window
- `firefox <file_path>` - Opens that file in firefox
- `firefox <dir_path>` - Opens that directory in firefox
- `firefox <url>` - If the command can't find a corresponding file/directory at the path provided, it will presume you're requesting a URL.

## Troubleshooting

### Error: "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe: No such file or directory"

If you get the above error, it will probably be due to your Chrome installation being located at another path. To resolve this:

1. Find the location of your chrome.exe in windows
2. In WSL2, open your .bashrc / .zshrc file
3. Amend the path from "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe", to the correct path.

*(Note that the path must start with /mnt/ for WSL2 to find it)*

### Error: "/mnt/c/Program Files/Mozilla Firefox/firefox.exe: No such file or directory"

If you get the above error, it will probably be due to your Firefox installation being located at another path. To resolve this:

1. Find the location of your firefox.exe in windows
2. In WSL2, open your .bashrc / .zshrc file
3. Amend the path from "/mnt/c/Program Files/Mozilla Firefox/firefox.exe", to the correct path.

*(Note that the path must start with /mnt/ for WSL2 to find it)*
