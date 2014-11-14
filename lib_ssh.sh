#!/bin/bash

function sshaddr {
# $1 - user
# $2 - host
    user=${1:-jure}
	host=${2:-lalg}
	# if host does not contain dot then add default domain
    [[ $host != *.* ]] && host="$host.fri.uni-lj.si"
    echo $user@$host
}


function ss {
# $1 - user
# $2 - host
# $3... - [command]
    addr=$(sshaddr $1 $2)
    shift 2
	ssh $addr "$@"
}


function sc {
# $1 - user
# $2 - host
# $3 - path on host
# $4... files 
     addr=$(sshaddr $1 $2)
	 path=$3
     shift 3
	 scp "$@" $addr:$path
}


function copykey {
    pushd . >/dev/null
    cd ~/.ssh
	test -f id_rsa.pub || ssh-keygen -t rsa -N '' -f id_rsa
    sc $1 $2 .ssh id_rsa.pub
	ss $1 $2 "cat .ssh/id_rsa.pub >> .ssh/authorized_keys"
	ss $1 $2 "rm .ssh/id_rsa.pub"
	popd >/dev/null
}

