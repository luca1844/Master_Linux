#!/bin/sh

############
# opkg update
# opkg install libustream-.*[ssl|tls]
# opkg install libustream-mbedtls
# opkg update && opkg install libustream-mbedtls
############

wget --no-check-certificate -O file "https://someonewhocares.org/hosts/zero/hosts"
sed -n '/^0/p' file >> hosts
rm file

wget --no-check-certificate -O file "https://raw.githubusercontent.com/r-a-y/mobile-hosts/master/AdguardDNS.txt"
sed -n '/^0/p' file >> hosts
rm file

rm /etc/hosts

sort -u hosts > /etc/hosts
rm hosts

##############################################################################
##############################################################################

sed -i '1s/^/ff02::2 ip6-allrouters\n/' /etc/hosts
sed -i '1s/^/ff02::1 ip6-allnodes\n/' /etc/hosts
sed -i '1s/^/::1 localhost ip6-localhost ip6-loopback\n/' /etc/hosts
sed -i '1s/^/127.0.0.1 localhost\n/' /etc/hosts

# Restart services
/etc/init.d/dnsmasq restart
/etc/init.d/network restart