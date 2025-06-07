#!/usr/bin/env zsh

# Directory where your .zsh files are located; adjust as needed.
ZSH_DIR=~/.config/scripts/commands

# Create an array of full file paths.
files=("$ZSH_DIR"/*.zsh)

# Use fzf to let the user select a file based on its basename (without extension).
selected_name=$(
  for f in "${files[@]}"; do
    # Output the file's base name (strip directory and .zsh extension)
    basename "$f" .zsh
  done | fzf --prompt="Select a command: "
)

if [[ -z "$selected_name" ]]; then
    # No selection: kill the current tmux pane.
    tmux kill-pane
else
    # Reassemble the full file path.
    selected_file="$ZSH_DIR/${selected_name}.zsh"
    # Execute the selected file.
    zsh "$selected_file"
    # If the command executed successfully, pause before killing the pane.
    if [[ $? -eq 0 ]]; then
        echo "Press any key to close this pane..."
        read -n1 -s
    fi
    tmux kill-pane
fi
