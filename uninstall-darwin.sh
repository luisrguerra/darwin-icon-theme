cat << "EOF"

Darwin
Icon Theme

EOF

echo Uninstalling Darwin icon theme

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



