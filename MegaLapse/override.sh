#GoPro HERO4 Override.sh MegaLapse hack 
#Replace X with the interval in seconds
sleep 5
/usr/local/gopro/bin/gpsend ca CM%01
sleep X
/usr/local/gopro/bin/gpsend bp SH%01
sleep 5

reboot
