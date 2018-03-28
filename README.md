# Mac Setup

* apps
* setup SST3 or VScode

## Apps

* Sublime Text 3 or VScode
* Hyper (http://hyper.js)
* Transmit
* Sequel Pro
* Node.js
* [Yarn](https://yarnpkg.com/en/)
* Homebrew
* 1Password (pull in vault from Dropbox)
* Composer
* Valet (park in wip/)
* Laravel setup

## Setup iTerm 2 or Hyper

* https://ruigomes.me/blog/perfect-iterm-osx-terminal-installation/
* theme `eastwood` in ~/.zshrc
* with 'Oh My ZSh' (imho: a must have) https://github.com/robbyrussell/oh-my-zsh ...
* Open the configuration file: ~/.zshrc
* Add sublime to the plugins: `plugins=(git, sublime)` (other recommendations: brew colored-man git osx)
* Open your terminal on steroids and type: `st foo.txt`
* Replace .zshrc user config section https://gist.github.com/chancesmith/5183af99f7fdbeadfca394ea3cdd4d11
* Add in word jumping (ALT + Left Arrow) - https://gist.github.com/waltz/8658549
* show hidden files $`defaults write com.apple.finder AppleShowAllFiles YES`
* install vtop - https://www.npmjs.com/package/vtop
* `brew cask install iterm2 && brew cask install sequel-pro`
* better styled git logs: $`git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"`
* [setup Z](https://www.smashingmagazine.com/2015/07/become-command-line-power-user-oh-my-zsh-z/#using-z-to-jump-to-frecent-folders)

## Homebrew setup

* install MySQL
  $`brew install mysql && brew services start mysql`
* install PHP 7.1
  $`brew install php71`
* install PHP switcher
  $`brew install brew-php-switcher && brew-php-switcher 71`
* restart iTerm

## Git prevent passphrase for SSH keys

* try this (answer two): https://stackoverflow.com/questions/7773181/git-keeps-prompting-me-for-password
* $`eval $(ssh-agent)`
* $`ssh-add`
  [resource for ^^^](http://stackoverflow.com/questions/10032461/git-keeps-asking-me-for-my-ssh-key-passphrase)

## Add global gitignore

* https://gist.github.com/Abizern/708713

## Setup VScode

* connect to gist to sync settings with team (Currently is Chance's gist)[https://gist.github.com/chancesmith/f44565a26d30815b3aa7fb740b1b713c]
* get font: [FiraCode](https://github.com/tonsky/FiraCode)
* WIP >> get second font: [flottflott](http://www.1001fonts.com/flottflott-font.html)
  * (guide)[https://medium.com/@zamamohammed/multiple-fonts-alternative-to-operator-mono-in-vscode-7745b52120a0] of fonts used && [fix](https://gist.github.com/nickytonline/8086319bf5836797ee3dea802a77000d) for latest version of VScode (See comments in gist)

## Setup Sublime Text 3

* [setup dropbox sync settings](https://gist.github.com/chancesmith/44d3aac78ba337b3c784ddec370dfab1)
* [shortcuts and packages](https://blog.alexmaccaw.com/sublime-text)
