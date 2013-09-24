# dotify-dotfiles
### based on lubieniebieski/dotify-dotfiles
[dotify](https://github.com/mattdbridges/dotify)-compatible dotfiles

## basic setup (clean osx 10.8)

### terminal app
[iterm2](http://www.iterm2.com/)

### command line tool

[apple command line tool](https://developer.apple.com/downloads)

### install xcode via app store

### homebrew

install [homebrew](http://mxcl.github.com/homebrew/)

```
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
```

do some magic for gcc

```
brew update
brew tap homebrew/dupes
```

then

```
brew install ack apple-gcc42 autoconf autojump automake bash bash-completion curl git hub libksba libtool libxml2 libxslt libyaml openssl pkg-config readline sqlite gnu-tar libiconv
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

## Editor

[sublime link](http://www.sublimetext.com/3)

### Sublime Package Control

* open console <kbd>ctrl+`</kbd>
* paste:

```
import urllib2,os; pf='Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler( ))); open( os.path.join( ipp, pf), 'wb' ).write( urllib2.urlopen( 'http://sublime.wbond.net/' +pf.replace( ' ','%20' )).read()); print( 'Please restart Sublime Text to finish installation')
```

### subl command

link app

```
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

set default editor

```
export EDITOR='subl -w'
```

Remove existing user preferences (make sure you've backup'd your own settings) & link new preferences:

```
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User && ln -s ~/.dotify/sublime3 ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
```

install color theme
* <kbd>⇧ + ⌘ + P</kbd>  and Install Package
* type __Monokai Extended__ and click <kbd>enter</kbd>

### sublime plugins :
* Sidebar Enhancements
* Alignment, shortcut: <kbd>⇧ + ⌘ + A</kbd>
* SublimeLinter
* Bracket Highlighter
* Go to function, shortcut: <kbd>⌘ + .</kbd> (build in 3)

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
