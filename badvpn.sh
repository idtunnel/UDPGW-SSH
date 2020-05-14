#!/bin/bash
# Created by Mei 2020
# Modified by IDTunnel

# install badvpn
cd
wget -O /usr/bin/badvpn-udpgw "https://github.com/ForNesiaFreak/FNS/raw/master/sett/badvpn-udpgw"
if [ "$OS" == "x86_64" ]; then
  wget -O /usr/bin/badvpn-udpgw "https://github.com/ForNesiaFreak/FNS/raw/master/sett/badvpn-udpgw64"
fi

#port BadVPN 7300
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300' /etc/rc.local
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300' /etc/rc.d/rc.local

#permission
chmod +x /usr/bin/badvpn-udpgw
chomod +x /etc/rc.d/rc.local

#badvpn 7300
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300
