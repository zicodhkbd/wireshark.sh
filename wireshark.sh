
sudo add-apt-repository ppa:wireshark-dev/stable 
sudo apt update
sudo apt install wireshark


sudo usermod -a -G wireshark sarif

sudo chgrp wireshark /usr/bin/dumpcap
sudo chmod 750 /usr/bin/dumpcap
sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap

sudo getcap /usr/bin/dumpcap

sudo wireshark
