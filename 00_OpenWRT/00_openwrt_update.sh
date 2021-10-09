#!/bin/sh

opkg update
echo -e "\e[31mCommand 1: Executed.\n\e[0m"


opkg list-upgradable
echo -e "\e[31mCommand 2: Executed.\n\e[0m"

opkg list-upgradable | sed -e "s/\s.*//" | while read PKG_NAME; do opkg upgrade "${PKG_NAME}"; done

echo -e "\e[31mUpgrade Completed.\n\e[0m"