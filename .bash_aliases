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
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias rs="rails s"
alias rc="rails c"
alias ber="bundle exec rspec"
alias r="rails"
alias bea="bundle exec autotest"

# Git
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull'
alias gp='git push'
alias gs='git status'
