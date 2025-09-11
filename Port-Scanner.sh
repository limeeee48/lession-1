

#echo "export PORTIMEOUT=$PORTIMEOUT" > ~/.bashrc ; source ~/.bashrc

_help_function()
{
cat <<EOF

this tool shows how /dev/tcp works
for checking ports.

USAGE :

Open the tool code and replace "google.com"
with the ip you want.

Run the tool and give port number .

you can also replace timeout sec .

Example :

$0 80
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
	&& echo -e "\e[1;32m[+] Port $_port Open\e[0m" && exit 0  \
	|| echo -e "\n\e[1;31m[-] Port $_port Close\e[0m" ;exit 1
fi


