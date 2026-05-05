# DOTFILES (FREEZER SYSTEM)

## Restore (one command)

git clone https://github.com/bytefroster/dotfiles.git && cd dotfiles && bash setup.sh

## Backup (save current setup)

freeze

## What this does

* installs zsh
* installs oh-my-zsh
* installs powerlevel10k
* restores .zshrc and config

## Notes

* do not store secrets here
* only configs (not cache, not downloads)
* update with: freeze

## Workflow

* change config → freeze
* system crash → restore

## Author

bytefroster
