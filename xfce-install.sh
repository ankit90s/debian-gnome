#!/usr/bin/env bash

## configure and install minimal xfce desktop environment

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

cat ./xsessionrc >> /home/$SUDO_USER/.xsessionrc
chown $SUDO_USER:$SUDO_USER /home/$SUDO_USER/.xsessionrc

apt install -y \
    libxfce4ui-utils \
    thunar \
    xfce4-appfinder \
    xfce4-panel \
    xfce4-pulseaudio-plugin \
    xfce4-whiskermenu-plugin \
    xfce4-session \
    xfce4-settings \
    xfce4-terminal \
    xfconf \
    xfdesktop4 \
    xfwm4 \
    xfce4-screenshooter \
    evince \
    gpicview \
    xfce4-power-manager \
    network-manager-gnome \
    xfce4-notifyd

echo 
echo xfce install complete, please reboot and issue 'startx'
echo
