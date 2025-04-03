#!/system/bin/sh

# Dynamic App Detection
current_app=$(dumpsys window | grep -E 'mCurrentFocus|mFocusedApp' | grep -oE '[^/]+}' | cut -d'}' -f1 | xargs)

# Browser/Camera List (Add new package names here)
case "$current_app" in
    *chrome*|*kiwi*|*browser*|*firefox*|*opera*|*uc*|*camera*|*gcam*|*scan*)
        safe_model="RMX2195"
        ;;
    *)
        safe_model="Pixel 8 Pro"
        ;;
esac

# Apply Changes Safely
resetprop ro.product.model "$safe_model"
resetprop ro.vendor.oppo.product.model "$safe_model"

# Universal Camera Fixes
resetprop persist.camera.HAL3.enabled 1
resetprop persist.vendor.camera.privapp.list "*"
resetprop vendor.camera.aux.packagelist "*"

# Face Unlock Fix
resetprop persist.vendor.camera.facedetection 1
resetprop persist.vendor.camera.faceauth 1
resetprop ro.hardware.fingerprint ""

# Critical App Check (Prevent Bootloop)
if [ -z "$(pidof system_server)" ]; then
    resetprop ro.product.model "Pixel 8 Pro"
fi
