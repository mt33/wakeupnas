# Wake up NAS

Goal: boot my FreeNAS 0.7 machine from my desktop without so much as lifting my hands off the keyboard. This repo contains the technique and two scripts for Mac OS to accomplish this.

## Prerequisites

The BIOS option for Wake-on-LAN must be enabled. The path to this menu differs in each BIOS, so refer to ~~your motherboard manual~~ Google. Then, inside FreeNAS' http interface, enable Wake on LAN (the setting is WOL_MAGIC) by going to Network > LAN Management.

## Python script

The script simply broadcasts a magic packet to the FreeNAS' MAC address on the LAN over port 80. To adapt it to your LAN, change the MAC and the local broadcast IP address.

## Applescript

Export the .applescript as an application from the Applescript Editor. Spotlight is set to index only /Applications, so that's where I save it. No more need for third-party app launchers! Spotlight is binded to Ctrl-Space:

![Wake up NAS - Spotlight](https://github.com/mt33/wakeupnas/raw/master/screenshots/spotlight.png)

And a simple confirmation (default is on Yes, so I can hit Enter):

![Wake up NAS - Confirm](https://github.com/mt33/wakeupnas/raw/master/screenshots/confirm.png)

An imperceptible amount of time later, the blue power LED on the box is on. Total keystrokes: 5.
