#!/system/bin/sh

#doubletap to wake
export WAKEUP_GESTURE_FILE=`ls /sys/devices/soc.0/f9924000.i2c/i2c-2/2-0070/input/input?/wake_gesture | head -n 1`
chown system system $WAKEUP_GESTURE_FILE
ln -sf $WAKEUP_GESTURE_FILE /data/wake_gesture
chown system system /data/wake_gesture
