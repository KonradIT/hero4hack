# overridehack
Override.sh hack examples and documentation (GoPro HERO4 auto executable)

###Get the modded firmware

The GoPro HERO4 camera (Black/Silver) does not support autoexec.ash hacks like the older generations, so a custom patch must be applied to the HERO4 firmware in order for override.sh program to be executed at the start, this was done by @evilwombat, [grab the firmware patch installer here](http://www.altiforce.net/support/)

###So, what can be done?

Like in autoexechack, here there are hacks that aim to extend the funtionality of the HERO4 cameras.

###What commands are available?

The GoPro HERO4 firmware has a file called gpsend that calls a HERO2/H3/H3+ WiFi command when executed with the right parameter. Ḧere is a list of H2/H3/H3+ commands: http://github.com/konradit/goprowifihack/blob/master/WiFi-Commands.mkdn

The file gpsend is in /usr/local/gopro/bin/

Also, since the override.sh is executing from the Linux side you can use busybox [as explained here](http://goprouser.freeforums.org/autoexec-ash-in-v3-0-0-possible-t22731.html#p120687) and many more Linux commands.

#####Examples:

Working on HERO4 Black with v3.00 GP Firmware

* bp = BACPAC
* ca = CAMERA

---

| SH command                           | Meaning                   |
|--------------------------------------|---------------------------|
| /usr/local/gopro/bin/gpsend ca CM%00 | Video mode                |
| /usr/local/gopro/bin/gpsend ca CM%01 | Photo mode                |
| /usr/local/gopro/bin/gpsend ca CM%02 | MultiShot mode            |
| /usr/local/gopro/bin/gpsend bp SH%01 | Trigger (record/take pic) |
| /usr/local/gopro/bin/gpsend bp SH%00 | Stop recording            |
| /usr/local/gopro/bin/gpsend ca WB%00 | White Balance Auto        |
| /usr/local/gopro/bin/gpsend ca WB%01 | White Balance 3000k       |
| /usr/local/gopro/bin/gpsend ca WB%02 | White Balance 5500k       |
| /usr/local/gopro/bin/gpsend ca WB%03 | White Balance 6500k       |
| /usr/local/gopro/bin/gpsend ca PT%01 | Protune ON                |
| /usr/local/gopro/bin/gpsend ca PT%00 | Protune OFF               |

###How to

First, install the custom firmware.

Then, make a file in the root of the SD card named **override.sh**, then put your code there.

It will be executed when the camera turns on.

####Misc notes

* /tmp/fuse_d/ = SD card
* /tmp/fuse_b/ = internal camera storage



