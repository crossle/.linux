#!/bin/sh
# Script to configure X, start common apps, and start xmonad.
# Author: Vic Fryel
# http://github.com/vicfryzel/xmonad-config


# Configure PATH so that we can access our scripts below
PATH=~/.bin:~/.xmonad/:~/.cabal/bin:$PATH


# Configure X
xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xdefaults &
xscreensaver -no-splash &
xmodmap ~/.Xmodmap
xcalib ~/.linux/MacOSXColor.icc
feh --bg-fill -z ~/Pictures/Wallpapers/android

# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)

# Start the system tray
tray &
nm-applet &
parcellite &
volumeicon &

# Start two terminals
urxvt &

# Start a browser
firefox &

# Start IRC client
pidgin &

xcompmgr -c &

# Input method
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
fcitx -d
xbacklight -set 60

#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session xmonad
#exec ck-launch-session dbus-launch --exit-with-session xmonad
exec dbus-launch --sh-syntax --exit-with-session xmonad
