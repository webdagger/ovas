#!/bin/sh
#       QuickFix Mista X
#       email: mistax@todaytoday.info
#       site: http://www.todaytoday.info/mista-x
apt-get update && apt-get upgrade -y
echo "Detecting Arch For Openvpn Access Download"
arch=$(uname -m)
if [ "$arch" == 'i386' ]
then
    echo "i386"
    wget http://swupdate.openvpn.org/as/openvpn-as-2.0.10-Ubuntu14.amd_64.deb
    dpkg -i openvpn-as-2.0.10-Ubuntu14.amd_64.deb
else
    echo "i686"
    wget http://swupdate.openvpn.org/as/openvpn-as-2.1.4-Ubuntu14.amd_64.deb
    dpkg -i openvpn-as-2.0.10-Ubuntu14.i386.deb
fi
