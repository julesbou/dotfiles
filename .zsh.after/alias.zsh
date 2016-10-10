alias vi="vim"

# dirty override of default vim because
# - we can't remove/update default vim
# - we dont want to alter PATH order for that
alias vim='/usr/local/Cellar/vim/7.4.488/bin/vim'

alias nlog='tail -f /usr/local/etc/nginx/logs/*'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

alias l='ls -Alh'
alias ll='ls -lh'
alias la='ls -a'    # show hidden files
alias lx='ls -lXB'  # sort by extension
alias lk='ls -lSr'  # sort by size, biggest last
alias lt='ls -ltr'  # last updated last

alias df='df -h'
alias du='du -h'

alias mkdir='mkdir -p'
alias h='history'
alias grep='grep --color=auto'

alias fr='trans -brief :fr'
alias eng='trans -brief :eng'
