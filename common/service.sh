#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

BUILD_FGP=$(getprop "ro.build.fingerprint")

case $BUILD_FGP in
    *OnePlus3*)
        resetprop ro.build.description "OnePlus3-user 7.1.1 NMF26F 108 dev-keys"
        resetprop ro.build.fingerprint "OnePlus/OnePlus3/OnePlus3:7.1.1/NMF26F/08081200:user/release-keys"
        resetprop ro.build.oemfingerprint "7.1.1/NMF26F/08081200:user/release-keys"
        ;;
    *trlteduoszh*)
        resetprop ro.build.fingerprint "samsung/trlteduoszh/trltechnzh:6.0.1/MMB29M/N9100ZHU1DQH2:user/release-keys"
        resetprop ro.build.display.id "trlteduoszh-user 6.0.1 MMB29M N9100ZHU1DQH2 release-keys"
        resetprop ro.build.id "MMB29M"
        resetprop ro.build.version.release "6.0.1"
        resetprop ro.build.version.incremental "N9100ZHU1DQH2"
        ;;
    *OnePlus2*)
        # credits: https://github.com/anupritaisno1/op2_certification_bypass
        resetprop ro.build.description "OnePlus2-user 6.0.1 MMB29M 15 dev-keys"
        resetprop ro.build.fingerprint "OnePlus/OnePlus2/OnePlus2:6.0.1/MMB29M/1447841200:user/release-keys"
        resetprop ro.build.oemfingerprint "6.0.1/MMB29M/1447841200:user/release-keys"
        ;;
    *)
        echo "Model not yet supported!"
        ;;
esac
