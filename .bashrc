if [[ $- == *i* ]] ; then
  export IS_INTERACTIVE=true
else
  export IS_INTERACTIVE=false
fi

if [[ -z $SSH_CONNECTION ]]; then
  export IS_REMOTE=false
else
  export IS_REMOTE=true
fi

# Colors ----------------------------------------------------------
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1

source ~/.bash_colors

# History ----------------------------------------------------------
export HISTCONTROL=ignoredups
export HISTFILESIZE=3000
export HISTIGNORE="ls:cd:[bf]g:exit:..:...:ll:lla"
alias h=history
hf(){
  grep "$@" ~/.bash_history
}

if [ $IS_INTERACTIVE = 'true' ] ; then # Interactive shell only

  # Input stuff -------------------------------------------------------
  bind "set completion-ignore-case on" # note: bind used instead of sticking these in .inputrc
  bind "set show-all-if-ambiguous On" # show list automatically, without double tab
  bind "set bell-style none" # no bell

  shopt -s checkwinsize # After each command, checks the windows size and changes lines and columns

  # git completion
  if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
  fi

  # Add completion to source and .
  complete -F _command source
  complete -F _command .

  # Prompts ----------------------------------------------------------
  git_dirty_flag() {
    git status 2> /dev/null | grep -c : | awk '{if ($1 > 0) print " [+-]"}'
  }
  rvm_prompt() {
    if [ -d .git ] ;
      then
        rvmp=$(~/.rvm/bin/rvm-prompt)
        echo "[$rvmp]"
    fi
  }
  story_id() {

    if [ -f tmp/.pivotal_story_id ] ;
      then
        echo "[#`cat "tmp/.pivotal_story_id"`]"
    fi
  }

  prompt_func() {
      previous_return_value=$?;

      prompt="\n\[\033]0;${USER} ${PWD}\007\]\[${COLOR_BLUE}\]\w ${COLOR_RED}$(rvm_prompt)${COLOR_GRAY}$(__git_ps1)${COLOR_GREEN}\]$(git_dirty_flag) $(story_id)\[${COLOR_NC}\]\n"

      if test $previous_return_value -eq 0
      then
          PS1="${prompt}> "
      else
          PS1="${prompt}\[${COLOR_RED}\]> \[${COLOR_NC}\]"
      fi
  }
  PROMPT_COMMAND=prompt_func

  export PS2='> '    # Secondary prompt
  export PS3='#? '   # Prompt 3
  export PS4='+'     # Prompt 4

fi

# Editors ----------------------------------------------------------
export EDITOR='vim'  #Command line
export GIT_EDITOR='vim'
export BUNDLER_EDITOR='sub'
# Search
# Use ack for grepping and find if ack is available

if type -P ack &>/dev/null ; then
  g(){
    ack $* --all-types --color-match=green --color-filename=blue --smart-case
  }
  # search for full words
  gw(){
    ack $* --all-types --color-match=green --color-filename=blue --word-regexp --smart-case
  }
  f(){
    ack -i -g ".*$*[^\/]*$"
  }
else
  g(){
    grep -Rin $1 *
  }
  f(){
    find . -iname "$1"
  }
fi

# Autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Bring in the other files ----------------------------------------------------

if [ -f ~/.bashrc_local ]; then
  source ~/.bashrc_local
fi

source ~/.bash_aliases
