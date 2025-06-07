# fzf Utilities

A couple of handy personal scripts using `fzf` to speed up common shell tasks.

## Scripts

### `fzf_SSH.zsh`

Quickly SSH into hosts defined in your `~/.ssh/config` using `fzf`.

#### Features

- Filters SSH hosts using `fzf`
- Immediate connect on selection

#### Screenshot

![image](https://github.com/user-attachments/assets/49099ebe-bafc-40ce-8344-c751d88111f1)

---

### `fzf_cmd.zsh`

Run commands or scripts from the `~/.config/scripts/commands/` directory.

#### Features

- Displays executable scripts in that directory with `fzf`
- Runs the selected script

#### Directory Structure

```sh
~/.config/scripts/
└── commands/
    ├── script1.sh
    ├── script2.sh
    └── ...
