# Mac Setup

- apps
- setup VScode

## quick install

- install Xcode
- install HomeBrew
- then run:

mac apps

```shell
brew install docker-compose
brew install node
brew install yarn
brew install zsh
brew install hub
brew install z
brew install gnupg
brew cask install 1password
brew cask install alfred
brew cask install atext
brew cask install bettertouchtool
brew cask install clipy
brew cask install docker
brew cask install dropbox
brew cask install dropzone
brew cask install firefox
brew cask install google-chrome
brew cask install handbrake
brew cask install hyper
brew cask install sequel-pro
brew cask install slack
brew install thefuck
brew cask install transmit
brew cask install visual-studio-code
brew tap homebrew/cask-fonts
brew cask install font-fira-code
```

- add new ssh key: `ssh-keygen`

## Other Apps list

- Adobe Creative Suite
- Composer
- Laravel setup
- Valet (park in wip/ && set extension to `.shlocal`)

## Setup Hyper

- set git global user: `git config --global user.name "John Doe" && git config --global user.email johndoe@example.com`
- install Oh-My-ZSH: ([see step 4 in this post](git@github.com:sodiumhalogenteam/setup-mac.git) or see [oh-my-zsh docs](https://github.com/robbyrussell/oh-my-zsh))
- change ZSH_THEME to `eastwood` in ~/.zshrc
- Open the configuration file: ~/.zshrc
- - sync up with SH dot-files - https://github.com/sodiumhalogenteam/sync-dot-files (see instructions in the )
- - (optional) add autocompletion plugin - https://github.com/zsh-users/zsh-autosuggestions
- better styled git logs: \$`git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"`
- install the following: `npm install --global vtop fkill git-emoji-commit watch-http-server fast-cli npm-check-updates`
- - install vtop - https://www.npmjs.com/package/vtop
- - install (fkill)[https://github.com/sindresorhus/fkill-cli]
- - add (Git Emoji Commit)[https://github.com/sodiumhalogenteam/git-emoji-commit]
- - add watch-http-server: https://www.npmjs.com/package/watch-http-server
    <!-- - download Z for faster folder jumping based on your terminal history: \$ `cd ~ && curl -OL https://raw.githubusercontent.com/rupa/z/master/z.sh` then [read this to setup Z in .zshrc](https://www.smashingmagazine.com/2015/07/become-command-line-power-user-oh-my-zsh-z/#using-z-to-jump-to-frecent-folders) -->

## add GPG key to GitHub

The brew list above adds `gnupg`, which gives your mac access to the `gpg` command. Now, [follow this GitHub guide to creating and adding your GPG key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key).

## Add global gitignore

- add `~/.gitignore`: https://github.com/sodiumhalogenteam/setup-mac/blob/master/.gitignore
- then set gitignore file as global `git config --global core.excludesfile ~/.gitignore`

## Setup Handbrake

- get the `./setup-mac/Handbrake-screencast-preset.json` and add to Handbrake

## Setup Dropzone

- go into 1pass to see your settings for your folder `wm` and `wm/non-keep/`
- if you are new to SH, we need to add you to 1pass and AWS folder + settings

## Setup Alfred

- add the screencast workflow in this repo: `./setup-mac/Handbrake Screencast.alfredworkflow`
- setup hyper as default terminal: in terminal \$`hyper i hyperalfred` then add script in Alfred ([see installation instructions](https://github.com/gjuchault/hyperalfred)).

## Setup VScode

- install settings-sync extension
- connect to gist to sync settings with team (Currently is Chance's gist)[https://gist.github.com/chancesmith/f44565a26d30815b3aa7fb740b1b713c]
- you'll need to get a Github key from Chance if you need permissions to be able to update the VScode settings for the whole team
- get font: [FiraCode](https://github.com/tonsky/FiraCode) (see **quick setup** above)
- WIP >> get second font: [flottflott](http://www.1001fonts.com/flottflott-font.html)
  - (guide)[https://medium.com/@zamamohammed/multiple-fonts-alternative-to-operator-mono-in-vscode-7745b52120a0] of fonts used && [fix](https://gist.github.com/nickytonline/8086319bf5836797ee3dea802a77000d) for latest version of VScode (See comments in gist)
- open \$`nano ~/.zshrc` and add your preference of

## Homebrew PHP setup

This needs an update - Chance Smith 10/24/2019

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

## Add to zshrc

`echo -e "\n source ~/.zshrc-import\n\n ## adds VScode to code alias\n alias c=\"code .\"\n" >> ~/.zshrc`

or (if vscode beta)

`echo -e "\n source ~/.zshrc-import\n\n ## adds VScode insider to code alias\n alias code=\"code-insiders\" alias c=\"code-insiders .\"\n" >> ~/.zshrc`

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

## Someday, add to setup

- In your terminal, run : `git config --global http://alias.ac '!git add -A && git commit -m'` Then just `git ac "commit message"` (might need to add this to .zshrc)
