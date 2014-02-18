alias cd..='cd ../'
alias cdprj='cd ~/Prj/'
alias cdedu='cd ~/Edu/'
alias cdfri='cd ~/Fri/'
alias aps='cd ~/Edu/APS'
alias os='cd ~/Edu/OS'
alias spo='cd ~/Edu/SPO'
alias prj='cd ~/Prj/'

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

