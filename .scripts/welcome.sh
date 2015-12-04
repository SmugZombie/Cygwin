#!/bin/bash

# welcome.sh
# Written by Ron Egli
# github.com/smugzombie

function getExternalIP {
        externalIP=$(curl -s http://digdns.com/ip/?mode=quick)
}

function getInternalIP {
        internalIP=$(ipconfig | grep IPv4 | awk -F ":" {'print $2'} | sed -e 's/ //g' | sed 
'/10.0.0./d' | sed '/169./d' | sed ':a;N;$!ba;s/\n/, /g')
}

function getVPNIP {
        vpnIP=$(ipconfig | grep 10.0.0 | awk -F ":" {'print $2'} | sed -e 's/ //g' | sed 
':a;N;$!ba;s/\n/, /g')

        if [ -z "$vpnIP" ]; then
                vpnIP="Not Connected"
        fi
}

function getDimensions {
        height=$(tput lines)
        width=$(tput cols)
        dimensions="$width x $height"
}

function getStats {
        totalMemory=$(cat /proc/meminfo | head -n 2 | awk {'print $2'} | head -n 1 )
        totalMemoryGB=$(echo $(($totalMemory / 1000000)) )
}

function getUser {
        user=$(whoami)
}

function main {
        getExternalIP;
        getInternalIP;
        getVPNIP;
        getStats;
        getDimensions;
        getUser;
        output;
}

function output {
echo -e "
         __      __       .__                             ._.
        /  \    /  \ ____ |  |   ____  ____   _____   ____| |
        \   \/\/   // __ \|  | _/ ___\/  _ \ /     \_/ __ \ |
         \        /\  ___/|  |_\  \__(  <_> )  Y Y  \  ___/\|
          \__/\  /  \___  >____/\___  >____/|__|_|  /\___  >_
               \/       \/          \/            \/     \/\/
        "
        echo "User        : $user"
        echo "External IP : $externalIP"
        echo "Internal IP : $internalIP"
        echo "VPN IP      : $vpnIP"
        #echo "$memoryInfo"
        echo "Memory      : $totalMemoryGB GB"
        #echo "Load Average: $loadAverage"
        echo "Dimensions  : $dimensions"
}

main;

