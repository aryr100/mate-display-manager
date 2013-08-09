mkdir -pv /var/lib/mdm
getent group mdm >/dev/null 2>&1 || groupadd -g 121 mdm
getent passwd mdm > /dev/null 2>&1 || /usr/sbin/useradd -c 'MATE Display Manager' -u 121 -g mdm -d /var/lib/mdm -s /sbin/nologin mdm
passwd -l mdm > /dev/null
chown -R mdm:mdm /var/lib/mdm > /dev/null
gtk-update-icon-cache -q -t -f usr/share/icons/hicolor
