# Mac Setup

- apps
- setup VScode

## Apps list

- Google Chrome
- 1Password
- Dropbox (selective sync `SH_Colab/projects`, not including: `projects/completed`)
- Slack
- Adobe Creative Suite
- aText
- VScode (insiders)
- [Hyper](http://hyper.js) or iTerm
- Transmit
- Sequel Pro
- Node.js
- [Yarn](https://yarnpkg.com/en/)
- Homebrew
- Composer
- Valet (park in wip/ && set extension to `.sh`)
- Laravel setup

## Setup Hyper

- https://ruigomes.me/blog/perfect-iterm-osx-terminal-installation/
- theme `eastwood` in ~/.zshrc
- with 'Oh My ZSh' (imho: a must have) https://github.com/robbyrussell/oh-my-zsh ...
- Open the configuration file: ~/.zshrc
- Replace .zshrc user config section https://gist.github.com/chancesmith/5183af99f7fdbeadfca394ea3cdd4d11
- Add in word jumping (ALT + Left Arrow) - https://gist.github.com/waltz/8658549
- show hidden files $`defaults write com.apple.finder AppleShowAllFiles YES`
- install vtop - https://www.npmjs.com/package/vtop
- `brew cask install iterm2 && brew cask install sequel-pro`
- better styled git logs: $`git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"`
- [setup Z](https://www.smashingmagazine.com/2015/07/become-command-line-power-user-oh-my-zsh-z/#using-z-to-jump-to-frecent-folders)
- install (fkill)[https://github.com/sindresorhus/fkill-cli]

## Homebrew setup

- install MySQL
  $`brew install mysql && brew services start mysql`
- install PHP 7.1
  $`brew install php71`
- install PHP switcher
  $`brew install brew-php-switcher && brew-php-switcher 71`
- restart iTerm

## Git prevent passphrase for SSH keys

- try this (answer two): https://stackoverflow.com/questions/7773181/git-keeps-prompting-me-for-password
- $`eval $(ssh-agent)`
- $`ssh-add`
  [resource for ^^^](http://stackoverflow.com/questions/10032461/git-keeps-asking-me-for-my-ssh-key-passphrase)

## Add global gitignore

- add `~/.gitignore`: https://gist.github.com/Abizern/708713
- https://stackoverflow.com/questions/7335420/global-git-ignore

## Setup VScode

- connect to gist to sync settings with team (Currently is Chance's gist)[https://gist.github.com/chancesmith/f44565a26d30815b3aa7fb740b1b713c]
- you'll need to get a Github key from Chance if you need permissions to be able to update the VScode settings for the whole team
- get font: [FiraCode](https://github.com/tonsky/FiraCode)
- WIP >> get second font: [flottflott](http://www.1001fonts.com/flottflott-font.html)
  - (guide)[https://medium.com/@zamamohammed/multiple-fonts-alternative-to-operator-mono-in-vscode-7745b52120a0] of fonts used && [fix](https://gist.github.com/nickytonline/8086319bf5836797ee3dea802a77000d) for latest version of VScode (See comments in gist)

## Extras

- install Alfred (might add sync with Dropbox)
- install aText (connect with SH Dropbox backup/sync => aText is a text expander)
- install [Karabiner](https://github.com/tekezo/Karabiner-Elements) ([remap capslock](http://brettterpstra.com/2017/06/15/a-hyper-key-with-karabiner-elements-full-instructions/))
- add nmap (to help scan networks for devices)
- add sshfs (connect external drive as a attached file system => ex: RaspberryPi editing)
- speed up [repeat key rate](https://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x) (see below)
