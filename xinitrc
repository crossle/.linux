#!/bin/sh

# Configure PATH so that we can access our scripts below
PATH=~/.bin:~/.xmonad/:~/.cabal/bin:$PATH

# Configure X
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xsetroot -cursor_name left_ptr &
xscreensaver -no-splash &
xcalib ~/.linux/MacOSXColor.icc
feh --bg-fill -z ~/Pictures/Wallpapers/6.jpg

# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)

# Start the system tray
tray &
nm-applet &
parcellite &
volumeicon &
xcompmgr -c &

# Start apps
urxvt &
firefox &
pidgin &

# Input method
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
fcitx -d

xbacklight -set 50

exec ck-launch-session dbus-launch --sh-syntax --exit-with-session xmonad
#exec dbus-launch --sh-syntax --exit-with-session xmonad
