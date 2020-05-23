#!/bin/bash
# Created by Mei 2020
# Modified by IDTunnel

# install badvpn
cd
wget -O /bin/badvpn-udpgw "https://www.dropbox.com/s/tgkxdwb03r7w59r/badvpn-udpgw"
wget -O /usr/bin/badvpn-udpgw "https://www.dropbox.com/s/tgkxdwb03r7w59r/badvpn-udpgw"

#port BadVPN 7300
sed -i '$ i\screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7300' /etc/rc.local

#permission
chmod +x /usr/bin/badvpn-udpgw
chmod +x /bin/badvpn-udpgw
chmod +x /etc/rc.d/rc.local

#coba jalankan badvpn 7300
screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000 --max-connections-for-client 10
