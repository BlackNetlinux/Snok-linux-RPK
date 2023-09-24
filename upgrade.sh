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
##################################################################################################
#==========( T7a9a9 man tdhbyat albrnmj)==========
# cpstatus=$?
# if [ $cpstatus = 0 ] ; then
# 	echo $RED"            ==========(  $GREEN Install $RED )=========="
# else
# 	echo $RED"            ==========( No Install )=========="
# fi
#==========( T7a9a9 man tdhbyat albrnmj OK )==========
##################################################################################################
clear
set -e
echo ""
echo $GREEN"#####################################################"
echo $RED"	Welcome $BLUE $USER "
echo $GREEN"#####################################################"
echo $STAND""
read -p "	Shut down computer after script finishes? " Shut
###############################################################
sudo apt install xterm
echo $GREEN"	# $STAND 1/7 Fetches the list of available updates"
#sudo apt update -y 
xterm -e apt update
wait
echo $GREEN"	# $STAND 2/7 Strictly upgrades the current packages"
#sudo apt upgrade -y 
xterm -e apt upgrade -y 
wait
echo $GREEN"	# 3/7 $STAND Installs updates (new ones)"
#sudo apt dist-upgrade -y 
xterm -e apt dist-upgrade -y
wait
echo $GREEN"	# 4/7 $STAND Installs full-upgrade (new ones)"
#sudo apt full-upgrade -y 
xterm -e apt full-upgrade -y
wait
echo $GREEN"	# 5/7 $STAND Installs  ( autoremove )" 
#sudo apt autoremove -y 
xterm -e apt autoremove -y
wait
echo $GREEN"	# 6/7 $STAND Installs  ( clean )" 
#sudo apt clean -y 
xterm -e apt clean -y
wait
echo $GREEN"	# 7/7 $STAND Installs  ( autoclean )" 
#sudo apt autoclean -y
xterm -e apt autoclean -y
wait
#sudo nala update -y
###################################
#xterm -e sudo apt update &
###################################
#sudo shutdown now
###############################################################
if [ $Shut = "y" ]
then
  sudo shutdown now
else
  echo $GREEN"###################################"
  echo $BLUE"          script finishes          "
  echo $GREEN"###################################"
fi








