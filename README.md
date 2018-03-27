# Play Store Visa

Fix [UNCERTIFIED status in Play Store](https://support.google.com/googleplay/answer/7165974) for OP2/OP3/Note4 and ~~maybe~~ more. 

Uncertified status may lead to some restrictions on specific apps (saying Netflix). It is not only judged by SafetyNet status but also some build props in your ROM. So this module does **NOT** help you to pass SafetyNet and requires you already passed it.

More specifically, to pass SafetyNet, if you are on a custom ROM/Kernel,
- [a patch in your kernel like this](https://github.com/LineageOS/android_kernel_samsung_apq8084/commit/31b70a32bcc3e571d41cc8451ebbc8702b334ff4) is *REQUIRED*
- If you are on stock ROM or other ROMs that enabled dm-verity, never touch system part.
- SELinux is always enforcing

# Installation

Search for "Play Store Visa" in Magisk Manager or download at [releases](https://github.com/Magisk-Modules-Repo/playstore_certification_bypass/releases).

# Support for New Devices

This module made it by injecting proper build fingerprint properties *per device*, most commonly `ro.build.fingerprint`. So device support is highly dependent on a working build fingerprint from a *certified* stock ROM. You can test and find a combination by your own and add to [service.sh](common/service.sh) accordingly.

I used to find those fingerprints hard to search around. Although one fingerprint may work for all devices of a kind, but people barely shares it. [Pull requests](https://github.com/Magisk-Modules-Repo/playstore_certification_bypass/pulls) are very welcomed so we may help one another! 

### Define: a working fingerprint

For the time being, I test the prop edits working by:
1.  clean data of Play Store
2.  reboot for the module to apply (or invoke resetprop through adb)
3.  open and check certification status in settings. (may have some delay)
4.  search for Netflix in Play Store.
5.  If you can see Netflix in search results after wiping store's data, then your props edits are good to go!

Enjoy ;P

# XDA Thread

https://forum.xda-developers.com/apps/magisk/play-store-visa-device-certified-custom-t3769069
