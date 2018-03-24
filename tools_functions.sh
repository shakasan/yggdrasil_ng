#------------------------------------------------------------------------------#
# Yggdrasil NG                                                                 #
#    compatibility :  Mint 18, Ubuntu 16.04, Elementary and other derivatives  #
#    author : Francois B. (Makotosan/Shakasan)                                 #
#    licence : GPLv3                                                           #
#    website : https://makotonoblog.be/                                        #
#------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# tools and config functions                                                  #
#-----------------------------------------------------------------------------#

#
# enable ufw at boot time and add rules for installed apps
#
function enableUFW () {
  msg "Enabling FireWall (UFW)"
  runCmd "sudo ufw enable"\
         "enabling UFW at boot"

  if which syncthing >/dev/null; then
    runCmd "sudo ufw allow syncthing" \
           "adding UFW rules for Syncthing"
  fi
}

#
# enable numlock by default on LightDM
#
function enableNumLockX () {
  msg "Adding NumLockX to MDM/LightDM Default Init"
  checkAndInstallDep apt numlockx numlockx
  if which lightdm >/dev/null; then
    runCmd "sudo cp /etc/lightdm/lightdm.conf.d/70-linuxmint.conf /etc/lightdm/lightdm.conf.d/70-linuxmint.conf.yggbak" \
           "Backing up original config file"
    runCmd "echo -e '\ngreeter-setup-script=/usr/bin/numlockx on' | sudo tee -a /etc/lightdm/lightdm.conf.d/70-linuxmint.conf" \
           "Enabling numlockx on in lightdm at boot"
  fi
}

#
# /tmp in RAM by modifying /etc/fstab
#TODO: add possibily to choose amount of ram
function enableTmpRAM () {
  runCmd "echo 'tmpfs /tmp tmpfs defaults,size=2g 0 0' | sudo tee -a /etc/fstab" \
         "Enabling /tmp in RAM by modifying /etc/fstab"
  if (whiptail --title "/tmp in RAM - Reboot" --yesno "Reboot required, proceed now ?" 10 60) then
    sudo reboot
  fi
}

#
# add screenfetch exec in .bashrc
#
function addScreenfetchBashrc () {
  msg "Adding screenfetch to .bashrc"
  checkAndInstallDep apt screenfetch screenfetch
  runCmd "touch /home/$myHomedir/.bashrc" \
         "Creating .bashrc file if necessary"
  runCmd "echo 'screenfetch -t' | tee -a /home/$myHomedir/.bashrc" \
         "Adding screenfetch to .bashrc"
}

#
# cli history cmd timestamp enable
#
function enableHistoryTS () {
  typeset ret_code
  printf "Enabling CLI History TimeStamp "
  echo "export HISTTIMEFORMAT='%F %T  '" | tee -a /home/$myHomedir/.bashrc &>> $logFile
  ret_code=$?
  retCode $ret_code
}

#
# install/enable auto install of security updates
#
function installUnattendedUpgrades () {
  msg "Installing unattended-upgrades"
  installPackage apt "unattended-upgrades"
}

#
# display useful system/hardware informations
#
function toolInxi () {
  checkAndInstallDep apt inxi inxi \
  && inxi -F
}

#
# check bandwith and latency of the internet connection
#
function toolSpeedtestCli () {
  checkAndInstallDep pip speedtest-cli speedtest-cli \
  && speedtest-cli
}

#
# check for packet loss
#
function toolPacketLoss () {
  ping -q -c 10 google.com
}

#
# Optimization of SQLite databases of Firefox and Firefox Nightly
#
function toolOptimizeFirefox () {
  if (whiptail --title "Firefox SQLite DB Optimization" --yesno "Terminate Firefox and proceed ?" 10 60) then
    if which firefox >/dev/null; then
      printf "Optimizing Firefox"
      pkill -9 firefox
      for f in ~/.mozilla/firefox/*/*.sqlite; do sqlite3 $f 'VACUUM; REINDEX;'; done
      printf "\n"
    fi
    if which firefox-trunk >/dev/null; then
      printf "Optimizing Firefox Nightly"
      pkill -9 firefox-trunk
      for f in ~/.mozilla/firefox-trunk/*/*.sqlite; do sqlite3 $f 'VACUUM; REINDEX;'; done
      printf "\n"
    fi
  fi
}

#
# remove useless packages (depedencies)
#
function toolAutoremove () {
  runCmd "sudo apt-get -y autoremove" \
         "Removing not necessary dependencies"
}

#
# remove old versions of installed kernels
#
function toolClearOldKernels () {
  checkAndInstallDep apt byobu purge-old-kernels
  runCmd "sudo purge-old-kernels --keep 3" \
         "Removing old kernels"
}

#
# force soundcards detection
#
function toolSoundCardsDetection () {
  runCmd "sudo alsa force-reload" \
         "Detecting ALSA sound cards"
}