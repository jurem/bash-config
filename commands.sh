alias cd..='cd ../'
alias aps='cd ~/Edu/APS'
alias os='cd ~/Edu/OS'
alias spo='cd ~/Edu/SPO'
alias prj='cd ~/Prj/'
alias edu='cd ~/Edu/'
alias aps1='cd ~/Edu/APS1'
alias dipl='cd ~/Edu/Dipl'

alias ll='ls -lp'
alias dir='ls -lp'
alias la='ls -alp'
alias rm='rm -i'
alias rmf='rm'
alias cp='cp -i'
alias cpf='cp'
alias mv='mv -i'
alias mvf='mv'


function edit {
    # Mac OS X specific
    open -a "Sublime Text 2" "$@"
}


function cleantex {
    rm *~
    rm *.backup

    rm *.aux
    rm *.log
    rm *.bbl
    rm *.blg
    rm *.toc

    rm *.nav
    rm *.out
    rm *.snm
}


function hidden {
    [[ "$1" = "on" ]] && v=TRUE || v=FALSE
    defaults write com.apple.finder AppleShowAllFiles $v
    killall Finder
}


function delete_recent {
    defaults -currentHost delete -g NSNavRecentPlaces
}
