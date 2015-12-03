if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

if [ -f ~/.scripts/welcome.sh ]; then
. ~/.scripts/welcome.sh
fi

export PATH=$PATH:.:~/bin

USER=$(id -G | grep -qE '\<(544|0)\>' && echo root || echo $USER)

if [ $USER = "root"  ]; then
   PS1="[\[\033[31m\]\$USER\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]]\$ "
else
   PS1="[\[\033[32m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]]\$ "
fi


