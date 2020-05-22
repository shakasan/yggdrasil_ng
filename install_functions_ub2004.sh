#-----------------------------------------------------------------------------#
# Yggdrasil NG                                                                #
#    compatibility : see documentation or man pages                           #
#    author : Francois B. (Makotosan/Shakasan)                                #
#    licence : GPLv3                                                          #
#    website : https://makotonoblog.be/                                       #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
#                                                                             #
# Ubuntu 20.04 / Linux Mint 20                                                #
#                                                                             #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# install functions                                                           #
#-----------------------------------------------------------------------------#

#
# Viber (headless)
#
function installViber () {
  installPackageDpkg http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb \
                     viber.deb \
                     no
}

#
# Viber (Menu)
#
function installViberMenu () {
  installPackageDpkg http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb \
                     viber.deb \
                     yes
}

#
# Franz (headless)
#
function installFranz () {
  installPackageDpkg https://github.com/meetfranz/franz/releases/download/v5.4.0/franz_5.4.0_amd64.deb \
                     franz.deb \
                     no
}

#
# Franz (Menu)
#
function installFranzMenu () {
  installPackageDpkg https://github.com/meetfranz/franz/releases/download/v5.4.0/franz_5.4.0_amd64.deb \
                     franz.deb \
                     yes
}

#
# Slack (headless)
#
function installSlack () {
  installPackageDpkg https://downloads.slack-edge.com/linux_releases/slack-desktop-4.4.2-amd64.deb \
                     slack.deb \
                     no
}

#
# Slack (Menu)
#
function installSlackMenu () {
  installPackageDpkg https://downloads.slack-edge.com/linux_releases/slack-desktop-4.4.2-amd64.deb \
                     slack.deb \
                     yes
}

#
# XnViewMP (headless)
#
function installXnViewMP () {
  installPackageDpkg https://download.xnview.com/XnViewMP-linux-x64.deb \
                     xnviewmp.deb \
                     no
}

#
# XnViewMP (Menu)
#
function installXnViewMPMenu () {
  installPackageDpkg https://download.xnview.com/XnViewMP-linux-x64.deb \
                     xnviewmp.deb \
                     yes
}

#
# update AMD/Intel CPU Microcode
#
function updateMicrocode () {
  msg "CPU Microcode updating"
  oldMicrocode=`cat /proc/cpuinfo | grep -i --color microcode -m 1 | awk -F': ' '{print $2}'`
  intel=`cat /proc/cpuinfo | grep -i Intel | wc -l`
  amd=`cat /proc/cpuinfo | grep -i Amd | wc -l`
  if [ "$intel" -gt "0" ]; then
    installPackage apt intel-microcode
    newMicrocode=`cat /proc/cpuinfo | grep -i --color microcode -m 1 | awk -F': ' '{print $2}'`
    printf "[INFO] Microcode updated from "$oldMicrocode" version to "$newMicrocode" version"
  elif [ "$amd" -gt "0" ]; then
    installPackage apt amd64-microcode
    newMicrocode=`cat /proc/cpuinfo | grep -i --color microcode -m 1 | awk -F': ' '{print $2}'`
    printf "[INFO] Microcode updated from "$oldMicrocode" version to "$newMicrocode" version"
  else
    printf "[INFO] No Intel/AMD CPU found"
  fi
  printf "\n"
}

#
# fix some config issue with Intel Wireless 6320 cards
#
function fixWirelessIntel6320 () {
  runCmd "sudo cp /etc/modprobe.d/iwlwifi.conf /etc/modprobe.d/iwlwifi.conf.bak" \
         "backing up config file"
  runCmd "echo options iwlwifi bt_coex_active=0 swcrypto=1 11n_disable=8 | sudo tee /etc/modprobe.d/iwlwifi.conf" \
         "applying new config"
  printf "[INFO] reboot required !!!"
  printf "\n"
}

#
# Key-ID USB Fido U2F device udev rules
#
function installKeyIDuDev () {
  printf "[CMD] Adding Key-ID device UDEV rules "

cat << EOF | sudo tee /etc/udev/rules.d/70-u2f.rules
# this udev file should be used with udev 188 and newer\n\
ACTION!="add|change", GOTO="u2f_end"

# Key-ID FIDO U2F
KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="096e", ATTRS{idProduct}=="0850|0880", TAG+="uaccess"

LABEL="u2f_end"
EOF

  ret_code=$?
  retCode $ret_code

  runCmd "sudo service udev restart" \
         "restarting UDEV service"
}

#
# install Teamviewer 13 (headless)
#
function installTeamViewer13 () {
  installPackageDpkg https://download.teamviewer.com/download/linux/teamviewer_amd64.deb \
                     teamviewer13.deb \
                     no
}

#
# install Teamviewer 13 (Menu)
#
function installTeamViewer13Menu () {
  installPackageDpkg https://download.teamviewer.com/download/linux/teamviewer_amd64.deb \
                     teamviewer13.deb \
                     yes
}

#
# install Compass (headless)
#
function installCompass () {
  installPackageDpkg https://downloads.mongodb.com/compass/mongodb-compass_1.20.5_amd64.deb \
                     compass.deb \
                     no
}

#
# install Compass (Menu)
#
function installCompassMenu () {
  installPackageDpkg https://downloads.mongodb.com/compass/mongodb-compass_1.20.5_amd64.deb \
                     compass.deb \
                     yes
}

#
# Boostnotes (headless)
#
function installBoostnotes () {
  installPackageDpkg https://github.com/BoostIO/BoostNote.next/releases/download/v0.4.1/boost-note-linux.deb \
                     boostnotes.deb \
                     no
}

#
# Boostnotes (Menu)
#
function installBoostnotesMenu () {
  installPackageDpkg https://github.com/BoostIO/BoostNote.next/releases/download/v0.4.1/boost-note-linux.deb \
                     boostnotes.deb \
                     yes
}

#
# Vagrant (headless)
#
function installVagrant () {
  installPackageDpkg https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.deb \
                     vagrant.deb \
                     no
}

#
# Vagrant (Menu)
#
function installVagrantMenu () {
  installPackageDpkg https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.deb \
                     vagrant.deb \
                     yes
}

#
# AppImage Launcher (headless)
#
function installAppImageLauncher () {
  installPackageDpkg https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.1.3/appimagelauncher_2.1.3-travis975.7408819.bionic_amd64.deb \
                     appimagelauncher.deb \
                     no
}

#
# AppImage Launcher (Menu)
#
function installAppImageLauncherMenu () {
  installPackageDpkg https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.1.3/appimagelauncher_2.1.3-travis975.7408819.bionic_amd64.deb \
                     appimagelauncher.deb \
                     yes
}