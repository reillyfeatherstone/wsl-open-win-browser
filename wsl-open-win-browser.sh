# Function to open files or URLs in Chrome
chrome() {
  if [ -e "$1" ]; then
    local file_path
    file_path=$(wslpath -w "$1")
    "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe" "$file_path"
  else
    "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe" "$1"
  fi
}

# Function to open files or URLs in Firefox
firefox() {
  if [ -e "$1" ]; then
    local file_path
    file_path=$(wslpath -w "$1")
    "/mnt/c/Program Files/Mozilla Firefox/firefox.exe" "$file_path"
  else
    "/mnt/c/Program Files/Mozilla Firefox/firefox.exe" "$1"
  fi
}
