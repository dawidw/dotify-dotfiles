# dotify-dotfiles

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

install [rvm](https://rvm.io/rvm/install/)

### dotify

```
gem install dotify
dotify github lubieniebieski/dotify-dotfiles
source ~/.bash_profile
```

### font

I use [SourceCodePro](https://github.com/adobe/Source-Code-Pro/downloads) font both for SublimeText2 and iTerm2.

## SublimeText2

[sublime link](http://www.sublimetext.com/2)

### Sublime Package Control

install [Sublime Package Control](http://wbond.net/sublime_packages/package_control)

### `sub` command

```
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sub
```

Remove existing user preferences (make sure you've backup'd your own settings) & link new preferences:

```
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User && ln -s ~/.dotify/sublime2 ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
```

## iTerm2

### settings (theme included)

1. go to `iTerm2 -> Preferences -> General Tab`
2. check `Load preferences from a user-defined folder or URL`
3. in the input below the checkbox, enter `/Users/YOUR_USER_NAME/.dotify/.iterm2`
4. restart iTerm2

### theme

If you would like to use only the color scheme (IR_Black), you can find it under this path:

```
/Users/YOUR_USER_NAME/.dotify/.iterm2/IR_Black.itermcolors
```
