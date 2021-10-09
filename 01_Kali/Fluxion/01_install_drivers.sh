lsusb
sudo apt install build-essential
sudo apt install bc sudo apt install linux-headers-`uname -r` 

sudo apt-get install dkms 
sudo apt-get install git

cd 
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au/

sudo ./dkms-install.sh
