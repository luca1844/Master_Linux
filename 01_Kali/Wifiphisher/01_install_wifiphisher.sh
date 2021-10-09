sudo apt install libnl-3-dev libnl-genl-3-dev libssl-dev -y
sudo apt-get install python3-setuptools

cd

git clone https://github.com/wifiphisher/wifiphisher.git # Download the latest revision
cd wifiphisher # Switch to tool's directory
chmod +x setup.py 
sudo python3 setup.py install
