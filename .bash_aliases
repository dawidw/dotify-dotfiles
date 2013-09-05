alias ls='ls -G'  # OS-X SPECIFIC - the -G command in OS-X is for colors, in Linux it's no groups
# Navigation -------------------------------------------------------
alias ..='cd ..'
alias ...='cd .. ; cd ..'
cl() { cd $1; ls -la; }

# Other aliases ----------------------------------------------------
alias ll='ls -hl'
alias la='ls -a'
alias lla='ls -lah'

# Misc
alias p8="ping 8.8.8.8"
alias reloadbash='source ~/.bash_profile'
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
alias m='more'
alias top='top -o cpu' # os x
alias df='df -h' # Show disk usage
alias untar="tar xvzf"
alias cp_folder="cp -Rpv" #copies folder and all sub files and folders, preserving security and dates

killhard() {
    kill -9 "$1"
}

# Rails
alias r="rails"
alias rs="rails s"
alias rc="rails c"
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias ber="bundle exec rspec"
alias bert="bundle exec rspec --tag focus"
alias berd="bundle exec rspec --format documentation"
alias bea="bundle exec autotest"

# Git
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull'
alias gp='git push'
alias gs='git status'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias gpp='git pull origin master; git push origin master'

# git hub
gsco() {
  hub browse -- commit/"$1"
}

# apps
alias gh='github'
alias n='/Users/dawidw/Work/resources/n'
alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias mongo_start='mongod'
