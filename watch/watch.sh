# watch.sh
# A simple watch script for Cygwin as for some reason mine doesnt work.
# github.com/smugzombie

arguments=$(for i in "$@"; do echo -n "$i "; done)

while :
do
        echo $($arguments)
        sleep 2
done
