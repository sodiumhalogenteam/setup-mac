# Mac Setup

- apps
- setup VScode

## quick install

- install HomeBrew
- then run:

mac apps

```shell
brew cask install 1password
brew cask install alfred
brew cask install atext
brew cask install docker
brew cask install dropbox
brew cask install dropzone
brew cask install firefox
brew cask install google-chrome
brew cask install hyper
brew cask install sequel-pro
brew cask install slack
brew cask install trasnmit
brew cask install visual-studio-code
```

tools

```shell
brew install docker-compose
brew install node
brew install yarn
brew install zsh
```

fonts

```shell
brew tap homebrew/cask-fonts
brew cask install font-fira-code
```

## Other Apps list

- Adobe Creative Suite
- Composer
- Laravel setup
- Valet (park in wip/ && set extension to `.sh`)

## Setup Hyper

- https://ruigomes.me/blog/perfect-iterm-osx-terminal-installation/
- theme `eastwood` in ~/.zshrc
- with 'Oh My ZSh' (imho: a must have) https://github.com/robbyrussell/oh-my-zsh ...
- Open the configuration file: ~/.zshrc
- - add autocompletion plugin - https://github.com/zsh-users/zsh-autosuggestions
- - sync up with SH dot-files - https://github.com/sodiumhalogenteam/sync-dot-files
- Add in word jumping (ALT + Left Arrow) - https://gist.github.com/waltz/8658549
- show hidden files \$`defaults write com.apple.finder AppleShowAllFiles YES` or toggle with `CMD + Shift + .`
- download Z \$ `cd ~ && curl -OL https://raw.githubusercontent.com/rupa/z/master/z.sh` then [setup Z](https://www.smashingmagazine.com/2015/07/become-command-line-power-user-oh-my-zsh-z/#using-z-to-jump-to-frecent-folders)
- install vtop - https://www.npmjs.com/package/vtop
- better styled git logs: \$`git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"`
- install (fkill)[https://github.com/sindresorhus/fkill-cli]
- In your terminal, run : `git config --global http://alias.ac '!git add -A && git commit -m'` Then just `git ac "commit message"` (might need to add this to .zshrc)
- add (Git Emoji Commit)[https://github.com/sodiumhalogenteam/git-emoji-commit]

## Homebrew PHP setup

- install MySQL
  \$`brew install mysql && brew services start mysql`
- install PHP 7.1 - [helpful install path if needed](https://medium.com/@romaninsh/install-php-7-2-xdebug-on-macos-high-sierra-with-homebrew-july-2018-d7968fe7e8b8)
  \$`brew install php71`
- install PHP switcher
  \$`brew install brew-php-switcher && brew-php-switcher 71`
- restart iTerm

## Git prevent passphrase for SSH keys

- try this (answer two): https://stackoverflow.com/questions/7773181/git-keeps-prompting-me-for-password
- \$`eval $(ssh-agent)`
- \$`ssh-add`
  [resource for ^^^](http://stackoverflow.com/questions/10032461/git-keeps-asking-me-for-my-ssh-key-passphrase)

## Add global gitignore

- add `~/.gitignore`: https://gist.github.com/Abizern/708713
- https://stackoverflow.com/questions/7335420/global-git-ignore

## Setup VScode

- install settings-sync extension
- connect to gist to sync settings with team (Currently is Chance's gist)[https://gist.github.com/chancesmith/f44565a26d30815b3aa7fb740b1b713c]
- you'll need to get a Github key from Chance if you need permissions to be able to update the VScode settings for the whole team
- get font: [FiraCode](https://github.com/tonsky/FiraCode)
- WIP >> get second font: [flottflott](http://www.1001fonts.com/flottflott-font.html)
  - (guide)[https://medium.com/@zamamohammed/multiple-fonts-alternative-to-operator-mono-in-vscode-7745b52120a0] of fonts used && [fix](https://gist.github.com/nickytonline/8086319bf5836797ee3dea802a77000d) for latest version of VScode (See comments in gist)
- open \$`nano ~/.zshrc` and add your preference of

```
## adds VScode insider to code alias
alias code="code-insiders"
alias c="code-insiders ."
```

## Extras Details

- Dropbox (selective sync `SH_Active`)
- Dropzone (`sh-drop`, see 1pass for dropzone entries, add user in AWS/IAM)
- sync hyper settings (https://www.npmjs.com/package/hyper-sync-settings)
- install Alfred (might add sync with Dropbox)
- install aText (connect with SH Dropbox backup/sync => aText is a text expander)
- install [Karabiner](https://github.com/tekezo/Karabiner-Elements) - [download](https://pqrs.org/osx/karabiner/) ([remap capslock](http://brettterpstra.com/2017/06/15/a-hyper-key-with-karabiner-elements-full-instructions/))
- add nmap (to help scan networks for devices)
- add sshfs (connect external drive as a attached file system => ex: RaspberryPi editing)
- https://tyke.app
- speed up [repeat key rate](https://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x) (see below)
