# dotify-dotfiles

[dotify](https://github.com/mattdbridges/dotify)-compatible dotfiles

## installation

### homebrew

install [homebrew](http://mxcl.github.com/homebrew/) - you'll need that anyway:)

```
brew install git ack bash bash-completion autojump
```

```
gem install dotify
dotify github lubieniebieski/dotify-dotfiles
source ~/.bash_profile
```

### font

I use [SourceCodePro](https://github.com/adobe/Source-Code-Pro/downloads) font both for SublimeText2 and iTerm2.

## SublimeText2

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

    `/Users/YOUR_USER_NAME/.dotify/.iterm2/IR_Black.itermcolors
