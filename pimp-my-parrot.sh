
#!/bin/bash
# Update OS
echo "[*] Updating OS "
sudo apt update && sudo apt install -y

## Cleaning up default OS stuff
echo "[*] Removing neovim and mate-terminal"
sudo apt purge neovim -y
sudo apt purge mate-terminal
echo "[*] Installing vim"
sudo apt install vim -y
echo "[*] Remove default folders, Music, Videos"
rm -rf Music/ Videos/ 
echo "[*] Creating TryHackMe (THM) and HackTheBox (HTB) Folders"
mkdir THM/
mkdir HTB/

## If QEMU/KVM; install copy/paste deb
sudo apt install spice-vdagent

## Install new apps
echo "[*] Installing new applications"
sudo apt install ftp
sudo apt install default-mysql-client
echo "[*] MySQL Installed"
sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
sudo ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit
echo "[*] Searchsploit installed"
sudo apt install tldr -y
tldr -u
echo "[*] TLDR installed"
sudo apt install feroxbuster -y
echo "[*] ferroxbuster installed"
python3 -m pip install ciphey --upgrade
echo "[*] Ciphey installed"
pip3 install search-that-hash && sth
echo "[*] Search-That-Hash installed"
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb -O /home/user/Downloads/rustscan_2.0.1_amd64.deb
sudo dpkg -i $HOME/Downloads/rustscan_2.0.1_amd64.deb
echo "[*] Rustscan installed"
sudo apt install ffuf -y
echo "[*] ffuf installed"
wget https://github.com/RickdeJager/stegseek/releases
sudo dpkg -i $HOME/Downloads/stegseek_0.6-1.deb
echo "[*] Stegseek installed"
# Remove downloaded deb packages
rm $HOME/Downloads/*.deb
# Insatll Mono
sudo apt install mono-devel -y
echo "[*] Mono installed"
# Install NetworkMiner
wget https://www.netresec.com/?download=NetworkMiner -O /tmp/nm.zip
sudo unzip /tmp/nm.zip -d /opt/
cd /opt/NetworkMiner*
sudo chmod +x NetworkMiner.exe
sudo chmod -R go+w AssembledFiles/
sudo chmod -R go+w Captures/ 

# Install Subfinder (requires GO; which is installed on Parrot)
# --> https://github.com/projectdiscovery/subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

echo "[*] Pimp My Parrot complete"

## Setup LinPeas, etc, in the "Public/" folder ##
## INSTALL .DOT FILES FROM GITHUB GISTS ##
## Install FF Plugins: DotGit, FoxyProxy, CookieManager
## Install Terminator Plugins: https://github.com/EliverLara/terminator-themes

### Browser Bookmarks ###
# https://gtfobins.github.io/
# https://lolbas-project.github.io/#
# https://book.hacktricks.xyz/
# https://wadcoms.github.io/
# https://github.com/RoqueNight/Reverse-Shell-TTY-Cheat-Sheet
# https://www.dcode.fr/en
# https://gchq.github.io/CyberChef/
# https://www.revshells.com/
