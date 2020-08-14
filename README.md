Networkicker.sh
A simple program that kicks undesirable users from your network 






If airmon-ng fails to put network card in monitor mode, edit the config file at /etc/NetworkManager/NetworkManager.conf by doing sudo gedit /etc/NetworkManager/NetworkManager.conf, and add the following lines : unmanaged-devices=interface-name:wlan0mon;interface-name:wlan1mon;interface-name:wlan2mon;interface-name:wlan3mon;interface-name:wlan4mon;interface-name:wlan5mon;interface-name:wlan6mon;interface-name:wlan7mon;interface-name:wlan8mon;interface-name:wlan9mon;interface-name:wlan10mon;interface-name:wlan11mon;interface-name:wlan12mon    #  avoid conflicts with airmon-ng


Credits to : kcdtv, https://askubuntu.com/questions/614803/aircrack-ng-airmon-ng-stop-working-after-updating-to-15-04-ioctlsiocsiwmode

Note : I am not responsible of what you could do with this script, use it at your own risk :warning: 

License : GNU GPL v3.0 
