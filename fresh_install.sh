#!/bin/sh
echo "\n##########\nRunning apt update...\n##########\n"
apt update

echo "\n##########\nRunning apt upgrade...\n##########\n"
apt upgrade -y

echo "\n##########\nRunning apt install git...\n##########\n"
apt install git -y

echo "Running apt install curl..."
apt install curl -y

echo "\n##########\nRunning apt install flatpak...\n##########\n"
apt install flatpak -y

echo "\n##########\nSetting up flatpak\n##########\n"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "\n##########\nRunning apt install vim...\n##########\n"
apt install vim -y

echo "Setting up VIM..."
curl -fLo /home/beached/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vimrc /home/beached/.vimrc
chmod 755 beached:beached /home/beached/.vim
chown -R beached:beached /home/beached/.vimrc /home/beached/.vim


echo "Running apt install python3-pip..."
apt install python3-pip -y

echo "Setting up python..."
python3 -m pip install --user virtualenv

echo "Running apt install nmap..."
apt install nmap -y

echo "Installing Flathub applications..."
flatpak install flathub com.brave.Browser -y
flatpak install flathub com.slack.Slack -y
flatpak install flathub org.mozilla.firefox -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.sublimetext.three -y
flatpak install flathub org.flameshot.Flameshot -y
flatpak install flathub com.github.debauchee.barrier -y
flatpak install flathub org.sqlitebrowser.sqlitebrowser -y
flatpak install flathub org.ghidra_sre.Ghidra -y
flatpak install flathub io.github.Hexchat -y
flatpak install flathub io.github.java_decompiler.jd-gui -y

echo "Setting Up Konsole..."
cp -r ./konsole/ /home/beached/.local/share/konsole
chown -R beached:beached /home/beached/.local/share/konsole
