#!/system/bin/sh
# Logging (Safe Debug)
log_file=/data/local/tmp/spoofer.log
exec 1>$log_file 2>&1

while true; do
    # Refresh every 2 seconds
    $MODDIR/common/customize.sh
    sleep 2
done
