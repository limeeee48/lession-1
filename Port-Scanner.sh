

#echo "export PORTIMEOUT=$PORTIMEOUT" > ~/.bashrc ; source ~/.bashrc
case "$1" in
	[0-9][0-9])
		_port=$1
		;;
	[0-9][0-9][0-9])
		_port=$1
		;;
	*)
		echo -e "\e[1;31mPort Unknown\e[0m" ; exit 1
esac
#_command="echo > /dev/tcp/google.com/$_port"
#read port1
timeout 2 bash -c "echo > /dev/tcp/google.com/$_port" 2>/dev/null \
	&& echo -e "\e[1;32mOPEN $_port \e[0m" && exit 0  \
	|| echo -e "\n\e[1;31m[-] Port $_port Close\e[0m" ;exit 1
fi


