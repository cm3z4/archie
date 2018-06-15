#!/bin/bash
#----------------------------------------------------------
# archie - v1.0.0                                         -
# A simple and guided script to tar.gz files/directories. -
# Author: cm3z4                                           -
# Dependencies: figlet, lolcat                            -
#----------------------------------------------------------

trap catch_errors ERR

function catch_errors {
  echo
  echo -e "Whoops! You must have typed a path incorrectly or the file/directory you\nare trying to archive doesn't exist." | lolcat
  rm -r $bdestination/$bname".tar.gz" & rm -r $bdestination/$bname".log"
  echo
  exit 2
}

figlet -f lean "archie" | lolcat
echo "v1.0.0"
echo
echo "A simple and guided script to tar.gz files/directories."
echo
echo " --> Archie excludes virtual file systems /dev, /proc, /sys, /tmp, etc. by default."
echo " --> Archie also creates a log containing the contents of the backup."
echo " --> Enjoy and feel free to contribute @ https://www.github.com/cm3z4/archie."
echo
echo "What will you name this backup?" | lolcat
echo
read bname
echo
echo "Which file/directory will you be backing up?" | lolcat
echo
echo " --> You must enter an absolute file/directory path."
echo " --> Example: /home/john/Pictures or enter / for the entire system."
echo
read bsource
echo
echo "Where will you store this backup?" | lolcat
echo
echo " --> Again, you must enter an absolute path to a directory or storge devie."
echo " --> It's recommended to keep backups on an external device."
echo
read bdestination
echo
echo "Exclude your home directory? (Yes/No)" | lolcat
echo
read boption
echo

     if [[ $boption == Yes ]]; then
         sudo tar -cvpzf $bdestination/$bname".tar.gz" --one-file-system \
         --exclude=$bname".tar.gz" \
         --exclude=$bname".log" \
         --exclude=home \
         $bsource > $bdestination/$bname".log"
         echo
         echo "Archive created!" | lolcat
         echo

     elif [[ $boption == yes ]]; then
         sudo tar -cvpzf $bdestination/$bname".tar.gz" --one-file-system \
         --exclude=$bname".tar.gz" \
         --exclude=$bname".log" \
         --exclude=home \
         $bsource > $bdestination/$bname".log"
         echo
         echo "Archive created!" | lolcat
         echo

     elif [[ $boption == Y ]]; then
         sudo tar -cvpzf $bdestination/$bname".tar.gz" --one-file-system \
         --exclude=$bname".tar.gz" \
         --exclude=$bname".log" \
         --exclude=home \
         $bsource > $bdestination/$bname".log"
         echo
         echo "Archive created!" | lolcat
         echo

     elif [[ $boption == y ]]; then
         sudo tar -cvpzf $bdestination/$bname".tar.gz" --one-file-system \
         --exclude=$bname".tar.gz" \
         --exclude=$bname".log" \
         --exclude=home \
         $bsource > $bdestination/$bname".log"
         echo
         echo "Archive created!" | lolcat
         echo

     elif [[ $boption == No ]]; then
         sudo tar -cvpzf $bdestination/$bname".tar.gz" --one-file-system \
         --exclude=$bname".tar.gz" \
         --exclude=$bname".log" \
         $bsource > $bdestination/$bname".log"
         echo
         echo "Archive created!" | lolcat
         echo

     elif [[ $boption == no ]]; then
         sudo tar -cvpzf $bdestination/$bname".tar.gz" --one-file-system \
         --exclude=$bname".tar.gz" \
         --exclude=$bname".log" \
         $bsource > $bdestination/$bname".log"
         echo
         echo "Archive created!" | lolcat
         echo

     elif [[ $boption == N ]]; then
         sudo tar -cvpzf $bdestination/$bname".tar.gz" --one-file-system \
         --exclude=$bname".tar.gz" \
         --exclude=$bname".log" \
         $bsource > $bdestination/$bname".log"
         echo
         echo "Archive created!" | lolcat
         echo

     elif [[ $boption == n ]]; then
         sudo tar -cvpzf $bdestination/$bname".tar.gz" --one-file-system \
         --exclude=$bname".tar.gz" \
         --exclude=$bname".log" \
         $bsource > $bdestination/$bname".log"
         echo
         echo "Archive created!" | lolcat
         echo

     else
         echo "Not a valid option! Run the script again."
         echo

     fi
