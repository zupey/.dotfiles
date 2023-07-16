# My Dotfile Configuration

This is my attempt at using stow to backup my dotfiles. Stow is a GNU symlink farm manager which helps to manage symbolic links.

Each subfolder in the `.dotfiles` repository is stores a dotfile for a particular program (e.g. zsh/nvim)

## How to add a symlink 
1. If the original dotfile is stored at `~/.config/nvim/lua/init.lua`, then create the folder `~/.dotfiles/neovim/.config/nvim/lua/init.lua`
2. `cd ~/.dotfiles`
3. `stow -vt ~ [app]`.

## Deleting a symlink
1. `cd ~/.dotfiles`
2. `stow -Dt ~ [app]`

## Setting up dotfiles in a new computer
1. Clone the repo
2. `cd ~/dotfiles`
3. `stow -vt ~ */`

## Understanding the stow command
- -v is verbose
- -t is target directory (The next argument is the target directory, usually `~`)
- ending argument is which directories to use for symlinks
- -n flag is to see what stow intends to execute (by reading the verbose output).  Remove the flag to actually execute the command.


[Reddit link on how to use stow](https://www.reddit.com/r/neovim/comments/z0zvfb/protip_how_to_back_up_all_dotfiles/)

