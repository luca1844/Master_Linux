red=$(tput setaf 1)
reset=$(tput sgr0)

cd $HOME

sudo rm -d -r -f cow*
sudo rm -d -r -f flux*
sudo rm -d -r -f h*
sudo rm -d -r -f Py*
sudo rm -d -r -f rtl*
sudo rm -d -r -f wi*
sudo rm -d -r -f Wi*
sudo rm -d -r -f mdk*

echo "$red Remove all folders. $reset"

sudo apt-get install dkms -y
sudo apt-get install git -y
sudo apt-get install gcc -y
sudo apt-get install g++ -y
sudo apt-get install cmake -y
sudo apt-get install build-essential libelf-dev linux-headers-`uname -r` -y
sudo apt-get update -y && sudo apt-get upgrade -y

echo "$red Upgrade. $reset"

####################################################
# 0 - Drivers
####################################################
sudo apt-get install firmware-atheros -y

sudo apt-get install realtek-rtl88xxau-dkms

cd
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au/
sudo make dkms_install

echo "$red Drivers. $reset"

####################################################
# 1 - Install dependences
####################################################
sudo apt-get install pkg-config libnl-3-dev libnl-genl-3-dev libssl-dev -y
sudo apt-get install libcurl4-openssl-dev zlib1g-dev libpcap-dev -y
sudo apt-get install python -y
sudo apt-get install python-dev -y
sudo apt-get install python-setuptools -y
sudo apt-get install python3-dev -y
sudo apt-get install python3-setuptools -y
sudo apt-get install python3-distutils -y
sudo apt-get install python3-pyqt5 python3-pip -y

sudo apt-get install xterm -y
sudo apt-get install hashcat -y
sudo apt-get install hcxtools -y
sudo apt-get install pyrit -y
sudo apt-get install hydra -y
sudo apt-get install crunch -y
sudo apt-get install nmap -y

sudo apt-get install -f

echo "$red 1 - Dependences OK. $reset"

####################################################
# 2 - Install hashcat
####################################################
cd
sudo apt-get remove hashcat -y
git clone https://github.com/hashcat/hashcat.git
cd hashcat/
git submodule update --init
sudo make && sudo make install

####################################################
# 3 - Install hcxtools
####################################################
cd
git clone https://github.com/ZerBea/hcxtools.git
cd hcxtools
sudo make && sudo make install

####################################################
# 4 - Install hcxdumptool
####################################################
cd
git clone https://github.com/ZerBea/hcxdumptool.git
cd hcxdumptool/
sudo make && sudo make install

####################################################
# 5 - Install Pyrit
####################################################
cd
sudo apt-get remove pyrit
git clone https://github.com/JPaulMora/Pyrit.git
cd Pyrit/
sudo ./setup.py build build
sudo ./setup.py build install

####################################################
# 6 - Install wifite2
####################################################
cd
git clone https://github.com/derv82/wifite2.git
cd wifite2
sudo python setup.py install

####################################################
# 7 - Install cowpatty
####################################################
cd
wget http://pkgs.fedoraproject.org/repo/pkgs/cowpatty/cowpatty-4.6.tgz/b90fd36ad987c99e7cc1d2a05a565cbd/cowpatty-4.6.tgz
tar zxfv cowpatty-4.6.tgz
cd cowpatty-4.6/
make
sudo cp cowpatty /usr/bin

####################################################
# 8 - Install mdk4
####################################################
cd
git clone https://github.com/aircrack-ng/mdk4
cd mdk4
sudo make && sudo make install

####################################################
# 9 - Install wifiphisher
####################################################
sudo apt-get install dnsmasq -y

cd
git clone https://github.com/wifiphisher/wifiphisher.git
cd wifiphisher
chmod +x setup.py
sudo python3 setup.py install

cd /usr/lib/x86_64-linux-gnu/
sudo ln -s -f libc.a liblibc.a

####################################################
# 10 - Install WiFi-autopwner
####################################################
cd
git clone https://github.com/Mi-Al/WiFi-autopwner.git

####################################################
# 11 - Install fluxion
####################################################
cd
git clone https://www.github.com/FluxionNetwork/fluxion.git
cd fluxion
sudo ./fluxion.sh -i