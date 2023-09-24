

clear
echo ""
echo "#########################################################"
echo "#	How to remove Snap from Ubuntu 22.04 LTS	#"
echo "#########################################################"
echo ""

snap list

echo " Let’s also stop snapd (snap daemon) services: "

sudo systemctl disable snapd.service
sudo systemctl disable snapd.socket
sudo systemctl disable snapd.seeded.service

echo " Then remove each snap. It’s best to do so one-by-one, rather than all in one apt remove line. So something like: "

sudo snap remove firefox
sudo snap remove snap-store
sudo snap remove gtk-common-themes
sudo snap remove gnome-3-38-2004
sudo snap remove core18
sudo snap remove snapd-desktop-integration -y

echo "  Now, let’s delete any leftover snap cached data: "

sudo rm -rf /var/cache/snapd/

echo "  Then purge or remove completely snapd using the following command: "

sudo apt autoremove --purge snapd

echo "  Finally, using purge doesn’t touch your home directory, so you can optionally delete any files previously created in ~/snap. "

echo "  To do this, use the following command: "

rm -rf ~/snap
echo ""
echo "#########################################################"
echo "#	How to remove Snap from Ubuntu 22.04 LTS	#"
echo "#########################################################"
clear
echo ""
echo "#########################################################"
echo "#  Reinstalling Firefox with apt from Ubuntu 22.04 LTS	#"
echo "#########################################################"
echo ""
echo "'
If you want to reinstall Firefox, when you try to do so with apt, you may get the following error:

firefox : PreDepends: snapd but it is not going to be installed
You can get around that by blocking Ubuntu from pulling the snap version of Firefox by pinning it.

First, create a new file: 

vim /etc/apt/preferences.d/firefox-no-snap

Next, add these lines to that new file:
===========================
Package: firefox*
Pin: release o=Ubuntu*
Pin-Priority: -1
===========================
Save it. Then add the Mozilla team Ubuntu PPA for Firefox: '"
echo ""
sudo add-apt-repository ppa:mozillateam/ppa

echo " Finally, ‘apt update’ and ‘apt install’ the latest Firefox version: "
echo ""
sudo apt update
sudo apt install firefox
