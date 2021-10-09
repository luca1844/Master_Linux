#!/bin/sh

currenttime=$(date +%H:%M:%S)
if [[ "$currenttime" \> "08:30:00" || "$currenttime" \< "01:00:00" ]]; then
    ping 1.1.1.1 -w 1
    if [ $? -ne 0 ]; then
        wifi
        # /etc/init.d/log restart; /etc/init.d/openvpn restart; sleep 10
        # wifi reload radio1
        echo '!!!! Error !!!!  '$(date) >> /root/log_loop
    fi
fi

# ping -w 1 1.1.1.1 &> /dev/null && echo online || echo offline

##################################################################

#!/bin/sh

# while [ 1 -eq 1 ]; do
#     ping 1.1.1.1 -w 2 > /root/file_log.txt
#     if [ $? -ne 0 ]; then
#         wifi
#         sleep 30
#     fi
#     sleep 5
# done