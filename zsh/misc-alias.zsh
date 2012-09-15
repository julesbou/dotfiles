# Go back 3 times
alias ....='cd ../../..'

# Sort dirs by weight
alias ducks='du -cks * | sort -rn|head -20'

# History alias
alias h='history'

# Add suffix alias for less
alias -g L='| less'

# Vim
alias v="vim"

# Ranger
alias r="ranger"

# AlsaMixer
alias a="alsamixer"

# PHPUnit
alias phpunituntil="phpunit --stop-on-failure --stop-on-error"

# Resource this file
alias reload=". ~/.zshrc"

# Start web server
alias startwebserver="sudo nginx && sudo mongod &"
# Stop web server
alias stopwebserver="sudo nginx -s stop && sudo pkill mongod"
# Restart web server
alias restartwebserver="sudo nginx -s reload && sudo pkill mongod && sudo mongod  &"

alias start="sudo rc.d start"
alias restart="sudo rc.d restart"
alias stop="sudo rc.d stop"

# Run IM program
alias im="weechat-curses"

# radios are in ~/data/radio
function radio() { mplayer -playlist ~/Music/playlists/$1/$1.txt }

# music/playlists
alias rplaylists='for dir in `ls ~/Music/playlists`;do f=~/Music/playlists/$dir && touch $f/$dir.txt && echo "" > $f/$dir.txt &&  ls -1 $f | grep ".mp3" > $f/$dir.txt; done'
alias soundcloud="soundcloud.sh ~/Music/new"

# Search using surfraw
alias gg="surfraw google"
alias dd="surfraw duckduckgo"
alias urban="surfraw urban"
alias search-acronym="surfraw acronym"

# Read 32GB zero's and throw them away.
alias benchmark='\dd if=/dev/zero of=/dev/null bs=1M count=32768'

# Connect using 3G usb dialer
alias dial='sudo wvdial'

# Soooo lazy
alias ya='yaourt'

# Generate haskell tags
alias htags='find ./ -name "*.*hs" | xargs hasktags'

# Translations
alias trans=google-translate
alias enfr="google-translate en fr "
alias fren="google-translate fr en "
