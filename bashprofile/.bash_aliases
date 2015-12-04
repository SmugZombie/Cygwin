#Bash Aliases
# Ron Egli
# github.com/smugzombie

#Variables
scriptRoot="~/.scripts/"
iexplorer="/cygdrive/c/Program\ Files/Internet\ Explorer/iexplore.exe"

#Linux to Cygwin commands
alias apt-get="apt-cyg"
alias reboot="shutdown -r"
alias sudo="$scriptRoot/cygwinadmin.bat"
alias whoami="id -G | grep -qE '\<(544|0)\>' && echo root || echo $USER"

#Cygwin to Windows commands
start="cmd /c start"
alias start="$start"

#Directory ShortCuts
alias winhome="cd /cygdrive/c/Documents\ and\ Settings/MYUSER/"
alias linhome="cd ~/"
alias wwwroot="cd /srv/www/"
alias scriptroot="cd $scriptRoot"

#Application Shortcuts
alias forticlient="cygstart 'forticlient'"
alias ciscovpn="cygstart 'C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe'"
alias cygwin="cygstart 'C:\cygwin64\bin\mintty.exe'"

#RDP Shortcuts
alias rdp="cygstart mstsc.exe /v"

#VNC Shortcuts #Requires VNCViewer in /app/ directory named "vnc.exe"
alias vnc="cygstart /app/vnc"

#Linux to Win Commands
alias ifconfig="ipconfig"
alias uptime="systeminfo | grep 'Boot Time'"
alias free="cat /proc/meminfo"

#Bash Shortcuts
alias editAlias="nano ~/.bash_aliases"
alias reloadAlias="source ~/.bash_aliases"
alias cygwin-setup="cygstart -- /bin/setup-x86_64.exe"

#Services Shortcuts
alias apache2="/usr/sbin/apachectl"

#Helpme
alias bashHelp=$scriptRoot"helpme.sh"
alias welcome=$scriptRoot"welcome.sh"
alias connect=$scriptRoot"connect.sh"
alias macsalt=$scriptRoot"macsalt.sh"
