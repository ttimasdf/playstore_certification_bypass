# Play Store Visa

Fix [UNCERTIFIED status in Play Store](https://support.google.com/googleplay/answer/7165974) for OP2/OP3/Note4 and maybe more. It won't necessarily fail SafetyNet BUT it may lead to some restrictions on specific apps (saying Netflix).

# Installation

Search for "Play Store Visa" in Magisk Manager or download at [releases](https://github.com/Magisk-Modules-Repo/playstore_certification_bypass/releases).

# Support for New Devices

This module made it by injecting proper build fingerprint properties per device, most commonly `ro.build.fingerprint`. So device support is highly dependent on a working build fingerprint from a certified stock ROM. You can test and find a combination by your own and add to [service.sh](common/service.sh) accordingly.

I used to find those fingerprints hard to search around. Although one fingerprint may work for all devices of a kind, but people barely shares it. Pull requests are very welcomed so we may help one another! 

### Define: a working fingerprint

For the time being, I test the prop edits working by:
clean data of Play Store
reboot for the module to apply (or invoke resetprop through adb)
open and check certification status in settings. (may have some delay)
search for Netflix in Play Store.
If you can see Netflix in search results after wiping store's data, then your props edits are good to go!

Enjoy ;P

# XDA Thread

https://forum.xda-developers.com/android/apps-games/play-store-visa-device-certified-custom-t3769069
