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
# enable ufw at boot time and add rules for installed apps
#
function enableUFW () {
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
  checkAndInstallDep apt numlockx numlockx
  if which lightdm >/dev/null; then
    runCmd "sudo touch /etc/lightdm/lightdm.conf.d/70-linuxmint.conf" \
           "creating lightdm config file if necessary"
    runCmd "sudo cp /etc/lightdm/lightdm.conf.d/70-linuxmint.conf /etc/lightdm/lightdm.conf.d/70-linuxmint.conf.yggbak" \
           "backing up lightdm original config file"
    runCmd "echo -e '\ngreeter-setup-script=/usr/bin/numlockx on' | sudo tee -a /etc/lightdm/lightdm.conf.d/70-linuxmint.conf" \
           "enabling numlockx on in lightdm at boot"
  fi
}

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
# add screenfetch exec in .bashrc
#
function addScreenfetchBashrc () {
  checkAndInstallDep apt screenfetch screenfetch
  runCmd "touch /home/$myHomedir/.bashrc" \
         "creating .bashrc file if necessary"
  runCmd "echo 'screenfetch -t' | tee -a /home/$myHomedir/.bashrc" \
         "adding screenfetch to .bashrc"
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