# watch.sh
# A simple watch script for Cygwin as for some reason mine doesnt work.
# github.com/smugzombie

arguements=$(for i in "$@"; do echo -n "$i "; done)

if [ -z "$arguements" ]; then
	echo "Missing Command";
	exit
fi


while :
do
        echo $($arguements)
        sleep 2
done
