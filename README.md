# Wake up NAS

A set of scripts and techniques to wake up my FreeNAS 0.7 box over Ethernet without so much as lifting my hands off the keyboard.

## Prerequisites

The BIOS option for Wake-on-LAN must be enabled. The path to this menu differs in each BIOS, so refer to ~~your motherboard manual~~ Google. Then, inside FreeNAS' http interface, enable Wake on LAN (the setting is WOL_MAGIC) by going to Network > LAN Management.

## Python script

The script simply broadcasts a magic packet to the FreeNAS' MAC address on the LAN over port 80. To adapt it to your LAN, change the MAC and the local broadcast IP address.

## Applescript

Export the .scpt as app by File > Save As... > *.app. Spotlight is set to only index my apps inside /Applications, so that's where I save it. No more need for third-party app launchers! Spotlight is binded to Ctrl-Space:

![Wake up NAS - Spotlight](http://github.com/mt33/wakeupnas/screenshots/spotlight.png)

And a simple confirmation (default is on Yes, so I can hit Enter):
![Wake up NAS - Confirm](http://github.com/mt33/wakeupnas/screenshots/confirm.png)

One second later the blue power LED on the box is on.
