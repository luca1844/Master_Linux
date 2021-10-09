sudo apt-get install libpcap-dev libssl-dev 

 
cd ~ 
wget http://pkgs.fedoraproject.org/repo/pkgs/cowpatty/cowpatty-4.6.tgz/b90fd36ad987c99e7cc1d2a05a565cbd/cowpatty-4.6.tgz 

 
tar zxfv cowpatty-4.6.tgz 

 
cd cowpatty-4.6/ 

 
make 

sudo cp cowpatty /usr/bin 

 
cd ~ 
