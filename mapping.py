#! /usr/bin/python
"""
This module the files in this dotfiles repo to a specific command to 
make using the dotfiles easy

Usage:
    mapping.py
"""

import subprocess
from pathlib import Path

repo_dir = Path(__file__).parent

# this maps the files in the repo to the commands used to get them working in the os
DOTFILE_MAP = {
    ".zshrc": f"ln -sf {repo_dir}/.zshrc ~/.zshrc",
    "crontab_backup": f"crontab {repo_dir}/crontab_backup",
    "kglobalshortcutsrc": f"cp {repo_dir}/kglobalshortcutsrc ~/.config/kglobalshortcutsrc",
}


def apply_dotfile(command: str) -> bool:
    try:
        result = subprocess.run(command, shell=True, check=True, capture_output=True)
        print(f"completed {command}")
        return result == 0
    except Exception as error:
        print(f"command '{command}' failed: {error}")
        return False


if __name__ == "__main__":
    for command in DOTFILE_MAP.values():
        apply_dotfile(command)