# dotify-dotfiles
### based on lubieniebieski/dotify-dotfiles
[dotify](https://github.com/mattdbridges/dotify)-compatible dotfiles

## clean installation (new macbook, osx mountain lion 10.8)

1. download [iterm2](http://www.iterm2.com/), it's much nicer than the standard terminal app
2. download [apple command line tool](https://developer.apple.com/downloads) or download the entire xcode from app store (more info [here](https://github.com/mxcl/homebrew/wiki/Installation))

### homebrew

install [homebrew](http://mxcl.github.com/homebrew/) - you'll need that anyway:)

do some magic for gcc

```
brew update
brew tap homebrew/dupes
```

then

```
brew install ack apple-gcc42 autoconf autojump automake bash bash-completion curl git hub libksba libtool libxml2 libxslt libyaml openssl pkg-config readline sqlite
```

### rvm

```
\curl -L https://get.rvm.io | bash
```

### dotify

```
gem install dotify
dotify github dawidw/dotify-dotfiles
source ~/.bash_profile
```

### font

not decided yet

## SublimeText2

[sublime link](http://www.sublimetext.com/2)

### Sublime Package Control

install [Sublime Package Control](http://wbond.net/sublime_packages/package_control)

### `subl` command

link app

```
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/sub
```

set default editor

```
export EDITOR='subl -w'
```

Remove existing user preferences (make sure you've backup'd your own settings) & link new preferences:

```
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User && ln -s ~/.dotify/sublime2 ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
```

install color theme
* <kbd>⇧⌘P</kbd> 
* "**Monokai Extended**" and click <kbd>enter</kbd>

## iTerm2

### settings (theme included)

1. go to `iTerm2 -> Preferences -> General Tab`
2. check `Load preferences from a user-defined folder or URL`
3. in the input below the checkbox, enter `/Users/YOUR_USER_NAME/.dotify/.iterm2`
4. restart iTerm2

### theme

I use my own preset:

```
/Users/YOUR_USER_NAME/.dotify/.iterm2/dawid_preset.itermcolors
```
