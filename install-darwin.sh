#!/bin/sh

cat << "EOF"

Darwin
Icon Theme

EOF

echo Theme installation

if [ -e ~/.icons/Darwin ]
then
   echo Darwin installation found at home folder, uninstalling...
   sudo rm -R ~/.icons/Darwin
fi

if [ -e /usr/share/icons/Darwin ]
then
   echo Darwin installation found at system icon themes, uninstalling...
   sudo rm -R /usr/share/icons/Darwin
fi

echo Installing theme at /usr/share/icons

sudo cp -fr Darwin /usr/share/icons

echo Creating icon theme cache

sudo gtk-update-icon-cache -q /usr/share/icons/Darwin
