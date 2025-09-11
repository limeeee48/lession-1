

#echo "export PORTIMEOUT=$PORTIMEOUT" > ~/.bashrc ; source ~/.bashrc

_help_function()
{
cat <<EOF
Simple Port Scanner Using

EOF
}


case "$1" in
	[0-9][0-9])
		_port=$1
		;;
	[0-9][0-9][0-9])
		_port=$1
		;;
	*)
		_help_function ; exit
esac
#_command="echo > /dev/tcp/google.com/$_port"
#read port1
timeout 2 bash -c "echo > /dev/tcp/google.com/$_port" 2>/dev/null \
	&& echo -e "\e[1;32mOPEN $_port \e[0m" && exit 0  \
	|| echo -e "\n\e[1;31m[-] Port $_port Close\e[0m" ;exit 1
fi


