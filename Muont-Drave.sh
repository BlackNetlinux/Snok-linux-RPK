
#================================
# sudo mkdir /media/usb_drive ; sudo mount /dev/sdb1 /media/usb_drive
# sudo apt install exfat-fuse exfat-utils
#================================
ntfsfix
#================================
lsblk
#blkid
#================================
echo " ( /dev/sdb or /dev/sdb1 or some other path ) " 
echo " [ /dev/* ] ==> [ /dev/sda1 ] "
#================================
sudo ntfsfix /dev/* 
#================================