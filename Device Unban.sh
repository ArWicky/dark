chmod 777 /data/data/com.pubg.imobile
rm -rf /data/data/com.pubg.imobile/shared_prefs
rm -rf /data/data/com.pubg.imobile/databases
clear
X=$(grep -n com.pubg.imobile /data/system/users/0/settings_ssaid.xml | grep -o 'value="[a-zA-Z0-9]*"*' | cut -d '"' -f2)
Xx=$(head -3 /dev/urandom | tr -cd 'a-z0-9' | cut -c -16)
sed -i "s/$X/$Xx/g" /data/system/users/0/settings_ssaid.xml
su -c reboot