change_monitor_udev_i3wm
========================

This simple way to automatically start xrandr command when monitor was added or removed
To start working with it please copy 70-persistent-monitor.rules to /etc/udev/rules.d
and change_monitor.sh to /usr/bin/ and get 755 permissions to this file.

Check you device name in change_monitor.sh file.
run /etc/init.d/udev/restart
enjoy
