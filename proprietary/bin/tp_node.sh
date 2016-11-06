#! /bin/sh

if [ ! -d "/data/tp" ]; then
    mkdir /data/tp
    chmod 0775 /data/tp
    chown system:system /data/tp
else
    rm /data/tp/*
fi

if [ -e "/sys/devices/soc.0/78b8000.i2c/i2c-4/4-0038/wakeup_mode" ]; then
	ln -s /sys/devices/soc.0/78b8000.i2c/i2c-4/4-0038/wakeup_mode /data/tp/wakeup_mode
fi

if [ -e "/sys/devices/soc.0/78b8000.i2c/i2c-4/4-004a/wakeup_mode" ]; then
	ln -s /sys/devices/soc.0/78b8000.i2c/i2c-4/4-004a/wakeup_mode /data/tp/wakeup_mode
fi

