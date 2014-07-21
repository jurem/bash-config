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


function sshfri {
    u=${1:-jure}
    h=${2:-lalg}
	shift 2
    ssh $u@$h.fri.uni-lj.si "$@"

}
alias sshlalg='sshfri jure lalg'
alias sshlalgec='sshfri jure lalgec'


function edit {
    /Applications/Design/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2 &
}

