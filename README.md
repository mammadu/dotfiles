# dotfiles

## requirements

- It's best to use this with [aconfmgr-files](https://github.com/mammadu/aconfmgr-files), that will install all the programs that some of these dotfiles depend on
- KDE plasma as the kglobalshortcutsrc are designed to work with the plasma desktop environment

## setup

- clone the repo to `~.config/dotfiles`
- you may have to change permissions of `mapping.py` to allow it to run as an executable
- run `mapping.py` this will take the files in the repo and install them to your system directory

## Updating

- When you determine that there's a new config file you want to save, you must update locations
    - Save the configuration file to the dotfiles repo directory (this could be a cronjob so that you don't forget new changes)
    - Update the mapping.py so that `DOTFILE_MAP` has a command for how to install/place your configuration file on a setup (e.g. create a symbolic link for .zshrc using `ln -sf {repo_dir}/.zshrc ~/.zshrc`)
    - push the changes to the remote repo (this could also be a cronjob so that you don't forget)
