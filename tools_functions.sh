#-----------------------------------------------------------------------------#
# Yggdrasil NG                                                                #
#    compatibility : see documentation or man pages                           #
#    author : Francois B. (Makotosan/Shakasan)                                #
#    licence : GPLv3                                                          #
#    website : https://makotonoblog.be/                                       #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# tools and config functions                                                  #
#-----------------------------------------------------------------------------#

#
# /tmp in RAM by modifying /etc/fstab
#TODO: add possibily to choose amount of ram
function enableTmpRAM () {
  runCmd "echo 'tmpfs /tmp tmpfs defaults,size=2g 0 0' | sudo tee -a /etc/fstab" \
         "enabling /tmp in RAM by modifying /etc/fstab"
  if (whiptail --title "/tmp in RAM - Reboot" --yesno "Reboot required, proceed now ?" 10 60) then
    sudo reboot
  fi
}

#
# cli history cmd timestamp enable
#
function enableHistoryTS () {
  typeset ret_code
  printf "[CMD] enabling CLI History TimeStamp "
  echo "export HISTTIMEFORMAT='%F %T  '" | tee -a /home/$myHomedir/.bashrc &>> $logFile
  ret_code=$?
  retCode $ret_code
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
# remove useless packages (depedencies)
#
function toolAutoremove () {
  runCmd "sudo apt-get -y autoremove" \
         "removing useless APT dependencies"
  runCmd "sudo flatpak uninstall --unused -y" \
         "removing useless FLATPAK dependencies"
}

#
# force soundcards detection
#
function toolSoundCardsDetection () {
  runCmd "sudo alsa force-reload" \
         "detecting ALSA sound cards"
}