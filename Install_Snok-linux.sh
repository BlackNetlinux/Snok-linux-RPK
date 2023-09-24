#!/bin/bash
# Scripts-BlackGhost-Touls-Hacking BY MTD Mehrez,BlackNet,BlackGhost
# SparoOS linux System Touls Hacking ( 2020/2021 )
################################
RED=$(tput setaf 1 && tput bold)
GREEN=$(tput setaf 2 && tput bold)
STAND=$(tput sgr0)
BLUE=$(tput setaf 6 && tput bold)
################################
#[wait][sleep 3][read -p "Shut down" Sh][
#########################################################################
#==========( T7a9a9 man tdhbyat albrnmj)==========
# cpstatus=$?
# if [ $cpstatus = 0 ] ; then
# 	echo $RED"            ==========(  $GREEN Install $RED )=========="
# else
# 	echo $RED"            ==========( No Install )=========="
# fi
#==========( T7a9a9 man tdhbyat albrnmj OK )==========
#########################################################################
clear
set -e
echo ""
echo $GREEN"#####################################################"
echo $RED"	Welcome $BLUE $USER  $GREEN [ BY : $HOSTNAME ]"
echo $GREEN"#####################################################"
echo $STAND""
sudo apt update # && sudo apt upgrade # : Update Your Server
sudo apt install xterm -y && wait
clear
set -e
echo ""
echo $GREEN"#####################################################"
echo $RED"	Welcome $BLUE $USER  $GREEN [ BY : $HOSTNAME ]"
echo $GREEN"#####################################################"
echo $STAND""
#sudo -i
######################################################################################
echo $GREEN"	### $RED Nala $GREEN (  Nala Apt on Ubuntu ) $STAND "
xterm -e apt install nala -y # nala list
wait
#echo $RED"		nala --version  $STAND " && sleep 3
xterm -e nala install curl -y
wait
#echo $BLUE"   ================================================================="
#echo $BLUE"   | # Input the index number at the prompt,                       |"
#echo $BLUE"   |      and press Enter to select the mirror.                    |" 
#echo $BLUE"   | In this case, the fastest mirror’s $GREEN index number is 1.  |"         
#echo $BLUE"   ================================================================="
#echo $STAND""
xterm -e nala fetch -1 y
wait
######################################################################################
echo $GREEN"	### $RED Pacstall $GREEN ( The AUR for Ubuntu ) $STAND "
xterm -e bash -c "$(curl -fsSL https://pacstall.dev/q/install) -y "
######################################################################################
echo $GREEN"	### $RED Flatpak $GREEN ( Ubuntu Quick Setup ) $STAND "
xterm -e nala install flatpak -y && wait                       # Install Flatpak
echo $GREEN"	     ## $STAND Install the Software Flatpak plugin"
xterm -e nala install gnome-software-plugin-flatpak -y && wait 
echo $GREEN"	     ## $STAND Add the Flathub repository"
xterm -e flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo && wait
## the official Flatpak PPA is the recommended way to install Flatpak
# sudo add-apt-repository ppa:flatpak/stable  && wait
# sudo apt update  && wait
# sudo apt install flatpak && wait 
######################################################################################
echo $GREEN"	### $RED Neofetch $GREEN ( The AUR for Ubuntu ) $STAND "
xterm -e nala install neofetch -y && wait      # Step 1: Install Neofetch
#xterm -e dpkg -L neofetch && sleep 3          # Step 2: Verify Installation
#neofetch --version && sleep 3                 # Step 3: Check Version
# xterm -e neofetch                            # Step 4: Launch Neofetch
### Uninstall Neofetch
# xterm -e apt remove neofetch                 # Step 5: Uninstall Neofetch
######################################################################################
echo $GREEN"	### $RED figlet $GREEN ( The AUR for Ubuntu ) $STAND "
xterm -e nala install figlet && wait # ( link : http://www.figlet.org/examples.html )
xterm -e nala install toilet && # figlet Snok_linux && wait
xterm -e nala install cowsay && # toilet SNOK_LINUX && wait
#xterm -e /usr/games/cowsay www.Snoklinux.com && sleep 3
#  xterm -e apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
######################################################################################
echo $GREEN"	### $RED RPK $GREEN ( Rpk install Touls for Ubuntu ) $STAND "
#sudo wget https://raw.githubusercontent.com/SparoOS/Snok-linux-RPK/main/rpk
#sudo mv rpk /bin/
#sudo chmod 777 /bin/rpk
######################################################################################
echo $GREEN"	### $RED Update $GREEN ( Update system for Ubuntu ) $STAND "
xterm -e nala update && wait
echo $RED""
figlet -f slant      Snok linux
echo $STAND""
######################################################################################
#######################################################################
####################          lsb_release          ####################
#######################################################################
# /etc/lsb_release -a
#==============================================================
sudo mv /etc/lsb_release /etc/lsb_release.Org
wait
echo 'DISTRIB_ID=Snoklinux
DISTRIB_RELEASE=2023
DISTRIB_CODENAME=jammy
DISTRIB_DESCRIPTION="Snoklinux 2023.04 LTS" ' > /etc/lsb_release
wait

######################################################################################
###[ Accessories ]####################################################################

#  # GDebi Package Installer
#  # GParted Partition Editor
#  # Calamares — System Installer
#  # Deepin Boot Maker
#  # Deepin File Manager
#  # KShutdown
#  # Mission Center
#  # Synaptic Package Manager
#  # Timeshift
# flatpak install flathub xyz.ketok.Speedtest   # Speedtest

###[ Development ]####################################################################

# flatpak install flathub com.sublimetext.three	# Sublime text
#  # VSCodium
#  # Whaler

###[ Wine ]###########################################################################

# flatpak install flathub org.winehq.Wine                 # Wine
# flatpak install flathub ua.org.brezblock.q4wine         # q4wine
# flatpak install flathub net.davidotek.pupgui2           # ProtonUp-Qt
# flatpak install flathub com.usebottles.bottles          # Bottles
# flatpak install flathub com.playonlinux.PlayOnLinux4    # PlayOnLinux 4
# flatpak install flathub org.phoenicis.playonlinux       # Phoenicis PlayOnLinux
# flatpak install flathub com.vysp3r.ProtonPlus           # ProtonPlus
# flatpak install flathub io.github.aggalex.Wineglass     # Wineglass

###[ Games ]###########################################################################


###[ Graphics ]########################################################################

# flatpak install flathub org.blender.Blender   # Blender
#  # Ristretto Image Viewer
# flatpak install flathub org.inkscape.Inkscape # Inkscape
# flatpak install flathub org.kde.krita # Krita

###[ Internet ]########################################################################

#  # Angry IP Scanner
#  # Firefox Web Browser
#  # Opera
# flatpak install flathub com.microsoft.Edge           # Microsoft Edge
#  # Transmission

###[ Multimedia ]#######################################################################

# flatpak install flathub org.videolan.VLC             # VLC media player
# flatpak install flathub org.kde.kdenlive  # Kdenlive
# flatpak install flathub org.audacityteam.Audacity # Audacity
# flatpak install flathub com.obsproject.Studio # OBS Studio

###[ Office ]###########################################################################

# flatpak install flathub org.onlyoffice.desktopeditors # ONLYOFFICE Desktop Editors

###[ Settings ]#########################################################################
###[ System ]###########################################################################

#  # Software
#  # Oracle VM VirtualBox
# flatpak install flathub io.missioncenter.MissionCenter    # Mission Center
