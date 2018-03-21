#------------------------------------------------------------------------------#
# Yggdrasil NG                                                                 #
#    compatibility :  Mint 18, Ubuntu 16.04, Elementary and other derivatives  #
#    author : Francois B. (Makotosan/Shakasan)                                 #
#    licence : GPLv3                                                           #
#    website : https://makotonoblog.be/
#------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# install, config, ... functions                                              #
#-----------------------------------------------------------------------------#

#
# install Base Apps (headless)
#
function installBase () {
  msg "Installing Base Apps"
  installAppsFromList base
}

#
# install Base Apps (Menu)
#
function installBaseMenu () {
  installAppsFromListMenu base
}

#
# install Office Apps (headless)
#
function installOffice () {
  msg "Installing Office Apps"
  installAppsFromList office
}

#
# install Office Apps (Menu)
#
function installOfficeMenu () {
  installAppsFromListMenu office
}

#
# install Multimedia Apps (headless)
#
function installMultimedia () {
  msg "Installing Multimedia Apps"
  installAppsFromList multimedia
}

#
# install Multimedia Apps (Menu)
#
function installMultimediaMenu () {
  installAppsFromListMenu multimedia
}

#TODO:
function installMultimediaExt () {
  msg "Installing Multimedia apps and tools"

  cd /tmp

  msg "Téléchargement de XnRetro"
  wget http://download.xnview.com/XnRetro-linux.tgz

  msg "Installation de XnRetro"
  tar xzf XnRetro-linux.tgz
  mv XnRetro /home/$myHomedir/Apps

  createAppShortcut "/home/"$myHomedir"/Apps/XnRetro/xnretro.sh" \
                    "/home/"$myHomedir"/Apps/XnRetro/xnretro.png" \
                    "Graphics" \
                    "XnRetro" \
                    "local"
  update-menus
}

#
# install eBook Apps (headless)
#
function installEbook () {
  msg "Installing eBook Apps"
  installAppsFromList ebook
}

#
# install eBook Apps (Menu)
#
function installEbookMenu () {
  installAppsFromListMenu ebook
}

#
# install Internet Apps (headless)
#
function installInternet () {
  msg "Installing Internet Apps"
  echo "opera-stable opera-stable/add-deb-source boolean false" | sudo debconf-set-selections
  installAppsFromList internet
}

#
# install Internet Apps (Menu)
#
function installInternetMenu () {
  echo "opera-stable opera-stable/add-deb-source boolean false" | sudo debconf-set-selections
  installAppsFromListMenu internet
}

#
# Viber (headless)
#
function installViber () {
  installPackageDpkg http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb \
                     viber.deb
}

#
# Viber (Menu)
#
function installViberMenu () {
  msg "Install Viber"
  installPackageDpkg http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb \
                     viber.deb
}

#TODO:
function installInternetExt () {
  #TODO: archive no dir
  msg "Téléchargement de Franz"
  mkdir -p Franz
  cd Franz
  wget -O franz.tgz https://github.com/imprecision/franz-app/releases/download/3.1.0/Franz-linux-x64-3.1.0.tgz

  msg "Installation de Franz"
  tar xzf franz.tgz
  cd ..
  mv Franz /home/$myHomedir/Apps

  createAppShortcut "/home/"$myHomedir"/Apps/Franz/Franz" \
                    "/home/"$myHomedir".icons/franz.png" \
                    "Network;InstantMessaging" \
                    "Franz" \
                    "local"
  update-menus
}

#
# install Misc Utilities Apps (headless)
#
function installMiscUtilities () {
  msg "Installing utilities Apps"
  installAppsFromList utilities
}

#
# install Misc Utilities Apps (Menu)
#
function installMiscUtilitiesMenu () {
  installAppsFromListMenu utilities
}

#
# install Wine Build (headless)
#
function installWine () {
  msg "Installing Wine Apps"
  installAppsFromList wine
}

#
# install Wine Build (Menu)
#
function installWineMenu () {
  installAppsFromListMenu wine
}

#
# install Game Apps (headless)
#
function installGames () {
  msg "Installing Games apps and tools"
  installAppsFromList games
}

#
# install Game Apps (Menu)
#
function installGamesMenu () {
  installAppsFromListMenu games
}

#
# install Burning Apps (headless)
#
function installBurningTools () {
  msg "Installing CD/DVD/BD Burning apps and tools"
  installAppsFromListMenu burningtools
}

#
# install Burning Apps (Menu)
#
function installBurningToolsMenu () {
  installAppsFromListMenu burningtools
}

#
# install Network Apps (headless)
#
function installNetTools () {
  msg "Installing Network apps and tools"
  installAppsFromList nettools
}

#
# install Network Apps (Menu)
#
function installNetToolsMenu () {
  installAppsFromListMenu nettools
}

#
# install Caja Plugins (headless)
#
function installCajaPlugins () {
  msg "Installing Caja extensions"
  installAppsFromList cajaplugins
}

#
# install Caja Plugins (Menu)
#
function installCajaPluginsMenu () {
  installAppsFromListMenu cajaplugins
}

#
# install Nautilus Apps + plugins (headless)
#
function installNautilusAndPlugins () {
  msg "Installing Nautilus and extensions"
  installAppsFromList nautilus
}

#
# install Nautilus Apps + plugins (Menu)
#
function installNautilusAndPluginsMenu () {
  installAppsFromListMenu nautilus
}

#
# install Gimp plugins (headless)
#
function installGimpPlugins () {
  msg "Installing Gimp extensions"
  installAppsFromList gimp
}

#
# install Gimp plugins (Menu)
#
function installGimpPluginsMenu () {
  installAppsFromListMenu gimp
}

#
# install RhythmBox plugins (headless)
#
function installRhythmBoxPlugins () {
  msg "Installing RhythmBox extensions"
  installAppsFromList rhythmbox
}

#
# install RhythmBox plugins (Menu)
#
function installRhythmBoxPluginsMenu () {
  installAppsFromListMenu rhythmbox
}

#
# install Pidgin plugins (headless)
#
function installPidginPlugins () {
  msg "Installing Pidgin extensions"
  installAppsFromList pidgin
}

#
# install Pidgin plugins (Menu)
#
function installPidginPluginsMenu () {
  installAppsFromListMenu pidgin
}

#
# install Nitrogen app (headless)
#
function installNitrogen () {
  msg "Installing Nitrogren"
  installAppsFromList nitrogen
}

#
# install Nitrogen app (Menu)
#
function installNitrogenMenu () {
  installAppsFromListMenu nitrogen
}

#
# install Beta Apps (headless)
#
function installBeta () {
  msg "Installing Beta Apps"
  installAppsFromList beta
}

#
# install Beta Apps (Menu)
#
function installBetaMenu () {
  installAppsFromListMenu beta
}

#
# install Nightly Apps (headless)
#
function installNightly () {
  msg "Installing Nightly Apps"
  installAppsFromList nightly
}

#
# install Nightly Apps (Menu)
#
function installNightlyMenu () {
  installAppsFromListMenu nightly
}

#
# install GTK Themes (headless)
#
function installThemes () {
  msg "Installing themes"
  installAppsFromList gtkthemes
}

#
# install GTK Themes (Menu)
#
function installThemesMenu () {
  installAppsFromListMenu gtkthemes
}

#
# install Icon Themes (headless)
#
function installIcons () {
  msg "Installing icons"
  installAppsFromList icons
}

#
# install Icon Themes (Menu)
#
function installIconsMenu () {
  installAppsFromListMenu icons
}

#
# install Solaar App (headless)
#
function installSolaar () {
  msg "Installing Solaar"
  installAppsFromList solaar
}

#
# install Solaar App (Menu)
#
function installSolaarMenu () {
  installAppsFromListMenu solaar
}

#
# install CardReader Apps (headless)
#
function installCardReader () {
  msg "Installing CardReader and utils"
  installAppsFromList cardreader
}

#
# install CardReader Apps (Menu)
#
function installCardReaderMenu () {
  installAppsFromListMenu cardreader
}

#
# update AMD/Intel CPU Microcode
#
function updateMicrocode () {
  oldMicrocode=`cat /proc/cpuinfo | grep -i --color microcode -m 1`
  intel=`cat /proc/cpuinfo | grep -i Intel | wc -l`
  amd=`cat /proc/cpuinfo | grep -i Amd | wc -l`
  if [ "$intel" -gt "0" ]; then
    installPackage apt intel-microcode
  elif [ "$amd" -gt "0" ]; then
    installPackage apt amd64-microcode
  fi
  newMicrocode=`cat /proc/cpuinfo | grep -i --color microcode -m 1`
  printf "[INFO] Microcode updated from "$oldMicrocode" version to "$newMicrocode" version"
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
# install Webcam Apps (headless)
#
function installWebcam () {
  msg "Installing Apps needed for Webcams"
  installAppsFromList webcam
}

#
# install Webcam Apps (Menu)
#
function installWebcamMenu () {
  installAppsFromListMenu webcam
}

#
# install Nvidia Drivers (headless)
#
function installNvidia370 () {
  msg "Installing Nvidia 370 driver"
  installAppsFromList nvidia-370
}

#
# install Nvidia Drivers (Menu)
#
function installNvidia370Menu () {
  installAppsFromListMenu nvidia-370
}

#
# install Nvidia Drivers (headless)
#
function installNvidia375 () {
  msg "Installing Nvidia 375 driver"
  installAppsFromList nvidia-375
}

#
# install Nvidia Drivers (Menu)
#
function installNvidia375Menu () {
  installAppsFromListMenu nvidia-375
}

#
# install Nvidia Drivers (headless)
#
function installNvidia378 () {
  msg "Installing Nvidia 378 driver"
  installAppsFromList nvidia-378
}

#
# install Nvidia Drivers (Menu)
#
function installNvidia378Menu () {
  installAppsFromListMenu nvidia-378
}

#
# install Nvidia Drivers (headless)
#
function installNvidia381 () {
  msg "Installing Nvidia 381 driver"
  installAppsFromList nvidia-381
}

#
# install Nvidia Drivers (Menu)
#
function installNvidia381Menu () {
  installAppsFromListMenu nvidia-381
}

#
# install Nvidia Drivers (headless)
#
function installNvidia384 () {
  msg "Installing Nvidia 384 driver"
  installAppsFromList nvidia-384
}

#
# install Nvidia Drivers (Menu)
#
function installNvidia384Menu () {
  installAppsFromListMenu nvidia-384
}

#
# install TLP App (headless)
#
function installTLP () {
  msg "Installing TLP"
  installAppsFromList tlp
}

#
# install TLP App (Menu)
#
function installTLPMenu () {
  installAppsFromListMenu tlp
}

#TODO:
function installKeyIDuDev () {
  msg "Adding UDEV rules"
  sudo sh -c "echo '# this udev file should be used with udev 188 and newer\n\
ACTION!=\"add|change\", GOTO=\"u2f_end\"\n\
\n\
# Key-ID FIDO U2F\n\
KERNEL==\"hidraw*\", SUBSYSTEM==\"hidraw\", ATTRS{idVendor}==\"096e\", ATTRS{idProduct}==\"0850|0880\", TAG+=\"uaccess\"\n\
\n\
LABEL=\"u2f_end\"' > /etc/udev/rules.d/70-u2f.rules"

  runCmd "sudo service udev restart" \
         "restarting UDEV service"
}

#
# install Dev Apps (headless)
#
function installDevApps () {
  msg "Installing base Dev apps and tools"
  installAppsFromList dev
}

#
# install Dev Apps (Menu)
#
function installDevAppsMenu () {
  installAppsFromListMenu dev
}


#
# install Javascript env (headless)
#
function installJavascript () {
  msg "Installing Javascript env"
  installAppsFromList javascript
}

#
# install Javascript env (Menu)
#
function installJavascriptMenu () {
  installAppsFromListMenu javascript
}

#
# install JAVA 9 (headless)
#
function installJava9 () {
  msg "Installing Java9 + set as Default"
  installAppsFromList java9
}

#
# install JAVA 9 (Menu)
#
function installJava9Menu () {
  installAppsFromListMenu java9
}

#
# install Mongo DB 3 CE (headless)
#
function installMongo3CE () {
  msg "Installing Mongo DB 3 CE Apps"
  installAppsFromList mongodb-org
}

#
# install Mongo DB 3 CE (Menu)
#
function installMongo3CEMenu () {
  installAppsFromListMenu mongodb-org
}

#
# install Python Apps (headless)
#
function installPython () {
  msg "Installing Python apps and tools"
  installAppsFromList python
}

#
# install Python Apps (Menu)
#
function installPythonMenu () {
  installAppsFromListMenu python
}

#
# install PHP Apps (headless)
#
function installPHP () {
  msg "Installing PHP apps and tools"
  installAppsFromList php
}

#
# install PHP Apps (Menu)
#
function installPHPMenu () {
  installAppsFromListMenu php
}

#
# install QT Apps/tools (headless)
#
function installQT () {
  msg "Installing QT apps and tools"
  installAppsFromList qt
}

#
# install QT Apps/tools (Menu)
#
function installQTMenu () {
  installAppsFromListMenu qt
}

#
# install LUA Apps (headless)
#
function installLUA () {
  msg "Installing LUA apps and tools"
  installAppsFromList lua
}

#
# install LUA Apps (Menu)
#
function installLUAMenu () {
  installAppsFromListMenu lua
}

#
# install Ruby Apps (headless)
#
function installRuby () {
  msg "Installing Ruby apps and tools"
  installAppsFromList ruby
}

#
# install Ruby Apps (Menu)
#
function installRubyMenu () {
  installAppsFromListMenu ruby
}

#TODO:
function installAndroidEnv () {
  msg="Installing Android environment"

  runCmd "touch /home/$myHomedir/.bashrc" \
         "creating .bashrc file if necessary"
  sh -c "echo '\n\nexport PATH=${PATH}:/home/'$myHomedir'/Android/Sdk/tools:/home/'$myHomedir'/Android/Sdk/platform-tools' >> /home/$myHomedir/.bashrc"

  msg "Adding UDEV rules"
  sudo sh -c "echo 'SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0502\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Acer\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0b05\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Asus\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"413c\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Dell\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0489\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Foxconn\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"04c5\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Fujitsu\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"04c5\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Fujitsu-Toshiba\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"091e\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Garmin-Asus\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"18d1\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Google-Nexus\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"201E\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Haier\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"109b\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Hisense\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0bb4\", MODE=\"0666\", OWNER=\""$myHomedir"\" # HTC\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"12d1\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Huawei\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"8087\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Intel\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"24e3\", MODE=\"0666\", OWNER=\""$myHomedir"\" # K-Touch\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"2116\", MODE=\"0666\", OWNER=\""$myHomedir"\" # KT Tech\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0482\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Kyocera\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"17ef\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Lenovo\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"1004\", MODE=\"0666\", OWNER=\""$myHomedir"\" # LG\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"22b8\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Motorola\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0e8d\", MODE=\"0666\", OWNER=\""$myHomedir"\" # MTK\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0409\", MODE=\"0666\", OWNER=\""$myHomedir"\" # NEC\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"2080\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Nook\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0955\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Nvidia\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"2257\", MODE=\"0666\", OWNER=\""$myHomedir"\" # OTGV\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"10a9\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Pantech\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"1d4d\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Pegatron\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0471\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Philips\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"04da\", MODE=\"0666\", OWNER=\""$myHomedir"\" # PMC-Sierra\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"05c6\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Qualcomm\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"1f53\", MODE=\"0666\", OWNER=\""$myHomedir"\" # SK Telesys\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"04e8\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Samsung\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"04dd\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Sharp\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"054c\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Sony\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0fce\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Sony Ericsson\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0fce\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Sony Mobile Communications\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"2340\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Teleepoch\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"0930\", MODE=\"0666\", OWNER=\""$myHomedir"\" # Toshiba\n\
SUBSYSTEM==\"usb\", ATTR{idVendor}==\"19d2\", MODE=\"0666\", OWNER=\""$myHomedir"\" # ZTE' > /etc/udev/rules.d/99-android.rules"

  runCmd "sudo service udev restart" \
         "restarting UDEV service"

  createAppShortcut "/home/"$myHomedir"/tools/Android/Sdk/tools/android" \
                    "/home/"$myHomedir"/.icons/android.png" \
                    "GNOME;GTK;Development;IDE" \
                    "Android SDK" \
                    "local" \
  update-menus
}

#
# install Atom App (headless)
#
function installAtom () {
  msg "Installing Atom and extensions"
  installAppsFromList atom
}

#
# install Atom App (menu)
#
function installAtomMenu () {
  msg "Installing Atom and extensions"
  installAppsFromListMenu atom
}

#
# install Anjuta Apps (headless)
#
function installAnjuta () {
  msg "Installing Anjuta"
  installAppsFromList anjuta
}

#
# install Anjuta Apps (Menu)
#
function installAnjutaMenu () {
  installAppsFromListMenu anjuta
}

#
# install Brackets Apps (headless)
#
function installBrackets () {
  msg "Installing Brackets"
  installAppsFromList brackets
}

#
# install Brackets Apps (Menu)
#
function installBracketsMenu () {
  installAppsFromListMenu brackets
}

#
# install CodeBlocks Apps (headless)
#
function installCodeBlocks () {
  msg "Installing CodeBlocks"
  installAppsFromList codeblocks
}

#
# install CodeBlocks Apps (Menu)
#
function installCodeBlocksMenu () {
  installAppsFromListMenu codeblocks
}

#
# install Geany Apps (headless)
#
function installGeany () {
  msg "Installing Geany and extensions"
  installAppsFromList geany
}

#
# install Geany Apps (Menu)
#
function installGeanyMenu () {
  installAppsFromListMenu geany
}

#TODO:
function installEclipse () {
  if which umake >/dev/null; then
    msg "Umake installing : Eclipse"
    sudo umake ide eclipse
  fi
}

#
# install IDEA Apps (headless)
#
function installIdea () {
  msg "Installing Intellij-IDEA"
  installAppsFromList idea
}

#
# install IDEA Apps (Menu)
#
function installIdeaMenu () {
  installAppsFromListMenu idea
}

#
# install Pycharm Apps (headless)
#
function installPyCharm () {
  msg "Installing PyCharm"
  installAppsFromList pycharm
}

#
# install Pycharm Apps (Menu)
#
function installPyCharmMenu () {
  installAppsFromListMenu pycharm
}

#
# install Visual Studio Code Apps (headless)
#
function installVisualStudioCode () {
  msg "Installing Visual Studio Code"
  installAppsFromList code
}

#
# install Visual Studio Code Apps (Menu)
#
function installVisualStudioCodeMenu () {
  installAppsFromListMenu code
}

#
# install Android-Studio Apps (headless)
#
function installAndroidStudio () {
  msg "Installing Android-Studio"
  installAppsFromList androidstudio
}

#
# install Android-Studio Apps (Menu)
#
function installAndroidStudioMenu () {
  installAppsFromListMenu androidstudio
}

#
# install SublimeText Apps (headless)
#
function installSublimeText() {
  msg "Installing Sublime-Text"
  installAppsFromList sublime-text
}

#
# install SublimeText Apps (Menu)
#
function installSublimeTextMenu() {
  installAppsFromListMenu sublime-text
}

#
# install CAD Apps (headless)
#
function installCAD () {
  msg "Installing CAD apps and tools"
  installAppsFromList cad
}

#
# install CAD Apps (Menu)
#
function installCADMenu () {
  installAppsFromListMenu cad
}

#
# install Teamviewer 13 (headless)
#
function installTeamViewer13 () {
  msg "Install Teamviewer 13"
  installPackageDpkg https://download.teamviewer.com/download/linux/teamviewer_amd64.deb \
                     teamviewer13.deb
}

#
# install Teamviewer 13 (Menu)
#
function installTeamViewer13Menu () {
  installPackageDpkg https://download.teamviewer.com/download/linux/teamviewer_amd64.deb \
                     teamviewer13.deb
}

#
# install/enable Unboud (headless)
#
function enableUnbound () {
  msg "Installing Unbound"
  installAppsFromList unbound
}

#
# install/enable Unboud (Menu)
#
function enableUnboundMenu () {
  installAppsFromListMenu unbound
}

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
           "backing up original config file"
    runCmd "echo -e '\ngreeter-setup-script=/usr/bin/numlockx on' | sudo tee -a /etc/lightdm/lightdm.conf.d/70-linuxmint.conf" \
           "enabling numlockx on in lightdm at boot"
  fi
}

#
# /tmp in RAM by modifying /etc/fstab
#
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
  msg "Adding screenfetch to .bashrc"
  checkAndInstallDep apt screenfetch screenfetch
  runCmd "touch /home/$myHomedir/.bashrc" \
         "create .bashrc file if necessary"
  runCmd "echo 'screenfetch -t' | tee -a /home/$myHomedir/.bashrc" \
         "add screenfetch to .bashrc"
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
  checkAndInstallDep apt inxi inxi
  inxi -F
}

#
# check bandwith and latency of the internet connection
#
function toolSpeedtestCli () {
  checkAndInstallDep pip speedtest-cli speedtest-cli
  speedtest-cli
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
  msg "Cleaning useless deb package(s)"
  runCmd "sudo apt-get -y autoremove" \
         "removing not necessary dependencies"
}

#
# remove old versions of installed kernels
#
function toolClearOldKernels () {
  msg "Removing old kernels (keeping the 3 last kernels)"
  checkAndInstallDep apt byobu purge-old-kernels
  runCmd "sudo purge-old-kernels --keep 3" \
         "removing old kernels"
}

#
# force soundcards detection
#
function toolSoundCardsDetection () {
  runCmd "sudo alsa force-reload" \
         "detecting ALSA sound cards"
}

#-----------------------------------------------------------------------------#
# menus functions                                                             #
#-----------------------------------------------------------------------------#

#
# show about dialog box
#
function showAboutBoxMenu () {
whiptail \
--title "About" \
--msgbox "\n
 Author : Francois B. (Makotosan)
  Email : shakasan@sirenacorp.be
Website : https://makotonoblog.be/
 Github : https://github.com/shakasan/yggdrasil_ng
Licence : GPLv3
Version : $version\n
At the beginning, this script has been written to makes my life easier when I have to (re)install my personal computers ;-)
Advices and remarks are welcome ^^" \
20 80
}

#
# show reboot menu
#
function showRebootBoxMenu () {
  if (whiptail \
      --title "Yggdrasil $version - WARNING - ReBoot" \
      --yesno "Are you sure to reboot this computer ?" \
      7 42) then
	  sudo reboot
  fi
}

#
# show menu to config system
#
function showConfigMenu () {
  while true; do

    configMenuOptions=$(whiptail \
    --title "Yggdrasil $version - System Config" \
    --menu "System Config" \
    25 80 16 \
    "Ufw" "Enable Firewall (ufw)" \
    "NumLockX" "NumLock Enabled at boot time" \
    "TmpRAM" "/tmp stored in RAM" \
    "screenfetch" "screenfetch added to .bashrc" \
    "historyTS" "TimeStamp enabled in Shell History" \
    "unattendedUpgrades" "Enable automatic security updates" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $configMenuOptions in
      "Ufw")
        clear
        enableUFW
        pressKey
        ;;
      "NumLockX")
        clear
        enableNumLockX
        pressKey
        ;;
      "TmpRAM")
        clear
        enableTmpRAM
        pressKey
        ;;
      "screenfetch")
        clear
        addScreenfetchBashrc
        pressKey
        ;;
      "historyTS")
        clear
        enableHistoryTS
        pressKey
        ;;
      "unattendedUpgrades")
        clear
        installUnattendedUpgrades
        pressKey
        ;;
      "Back")
        break
        ;;
    esac

  done
}

#
# show menu to install system tools
#
function showSysToolsMenu () {
  while true; do

    sysToolsMenuOptions=$(whiptail \
    --title "Yggdrasil $version - System Tools" \
    --menu "System tools to diagnose and optimize" \
    25 80 16 \
    "inxi" "System informations" \
    "speedtest-cli" "Bandwidth test" \
    "packetloss" "Packetloss test (ping)" \
    "OptimizeFirefox" "Firefox SQLite databases optimization" \
    "Autoremove" "Remove useless Deb packages" \
    "CleanOldKernels" "Removing old kernels (keep 2 last kernels)" \
    "SoundCardsDetection" "Sound Cards Detection" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $sysToolsMenuOptions in
      "inxi")
        clear; toolInxi; pressKey
        ;;
      "speedtest-cli")
        clear; toolSpeedtestCli; pressKey
        ;;
      "packetloss")
        clear; toolPacketLoss; pressKey
        ;;
      "OptimizeFirefox")
        clear; toolOptimizeFirefox; pressKey
        ;;
      "Autoremove")
        clear; toolAutoremove; pressKey
        ;;
      "CleanOldKernels")
        clear; toolClearOldKernels; pressKey
        ;;
      "SoundCardsDetection")
        clear; toolSoundCardsDetection; pressKey
        ;;
      "Back")
        break
        ;;
    esac

  done
}

#
# show menu to install themes/icons
#
function showThemesInstallMenu () {
  while true; do

    themesInstallMenuOptions=$(whiptail \
    --title "Yggdrasil $version - Themes/Icons Install" \
    --menu "Install themes/icons from different submenus" \
    25 80 16 \
    "themes" "GTK themes" \
    "icons" "Icons" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $themesInstallMenuOptions in
      "themes")
        installThemesMenu
        ;;
      "icons")
        installIconsMenu
        ;;
      "Back")
        break
        ;;
    esac

  done
}

#
# show menu to install dev apps
#
function showDevInstallMenu () {
  while true; do

    devInstallMenuOptions=$(whiptail \
    --title "Yggdrasil $version - Dev Install" \
    --menu "Install Dev apps from different submenus" \
    25 80 16 \
    "devbase" "dev apps and tools" \
    "java9" "Java 9 dev env" \
    "javascript" "JavaScript dev env" \
    "nodelts" "NodeJS 8.x LTS" \
    "mongodb3ce" "MongoDB 3 CE" \
    "php" "PHP dev env" \
    "lua" "Lua dev env" \
    "ruby" "Ruby dev env" \
    "qt" "QT dev env" \
    "python" "Python dev env" \
    "androidenv" "Set Android env" \
    "atom" "Atom" \
    "anjuta" "Anjuta" \
    "brackets" "Brackets" \
    "codeblocks" "CodeBlocks" \
    "geany" "Geany" \
    "eclipse" "Eclipse" \
    "idea" "Idea" \
    "pycharm" "PyCharm" \
    "vsc" "Visual Studio Code" \
    "androidstudio" "Android Studio" \
    "sublimetext" "Sublime Text" \
    "cad" "CAD tools" \
    "teamviewer13" "Teamviewer 13" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $devInstallMenuOptions in
      "devbase")
        installDevAppsMenu
        ;;
      "java9")
        installJava9
        ;;
      "javascript")
        installJavascriptMenu
        ;;
      "mongodb3ce")
        installMongo3CEMenu
        ;;
      "php")
        installPHPMenu
        ;;
      "lua")
        installLUAMenu
        ;;
      "ruby")
        installRubyMenu
        ;;
      "qt")
        installQTMenu
        ;;
      "python")
        installPythonMenu
        ;;
      "androidenv")
        #TODO:
        ;;
      "atom")
        installAtomMenu
        ;;
      "anjuta")
        installAnjutaMenu
        ;;
      "brackets")
        installBracketsMenu
        ;;
      "codeblocks")
        installCodeBlocksMenu
        ;;
      "geany")
        installGeanyMenu
        ;;
      "eclipse")
        #TODO:
        ;;
      "idea")
        installIdeaMenu
        ;;
      "pycharm")
        installPyCharmMenu
        ;;
      "vsc")
        installVisualStudioCodeMenu
        ;;
      "androidstudio")
        installAndroidStudioMenu
        ;;
      "sublimetext")
        installSublimeTextMenu
        ;;
      "cad")
        installCADMenu
        ;;
      "teamviewer13")
        installTeamViewer13Menu
        ;;
      "Back")
        break
        ;;
    esac

  done
}

#
# show menu to install apps from different categories
#
function showAppInstallMenu () {
  while true; do

    appsInstallMenuOptions=$(whiptail \
    --title "Yggdrasil $version - Apps Install" \
    --menu "Install apps from different submenus" \
    25 80 16 \
    "base" "Base Apps" \
    "office" "Office Apps" \
    "multimedia" "Multimedia Apps" \
    "internet" "Internet Apps" \
    "utilities" "Misc Utilities" \
    "games" "Games & tools" \
    "burningtools" "Disc Burning and tools" \
    "nettools" "Network tools" \
    "cajaplugins" "Caja Plugins" \
    "nautilus" "Nautilus and plugins" \
    "gimp" "Gimp plugins" \
    "rhythmbox" "RhythmBox plugins" \
    "pidgin" "Pidgin plugins" \
    "nitrogen" "Nitrogen WP Manager" \
    "wine" "Wine Builds" \
    "viber" "Viber IM desktop app" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $appsInstallMenuOptions in
      "base")
        installBaseMenu
        ;;
      "office")
        installOfficeMenu
        ;;
      "multimedia")
        installMultimediaMenu
        ;;
      "internet")
        installInternetMenu
        ;;
      "utilities")
        installMiscUtilitiesMenu
        ;;
      "games")
        installGamesMenu
        ;;
      "burningtools")
        installBurningToolsMenu
        ;;
      "nettools")
        installNetToolsMenu
        ;;
      "cajaplugins")
        installCajaPluginsMenu
        ;;
      "nautilus")
        installNautilusAndPluginsMenu
        ;;
      "gimp")
        installGimpPluginsMenu
        ;;
      "rhythmbox")
        installRhythmBoxPluginsMenu
        ;;
      "pidgin")
        installPidginPluginsMenu
        ;;
      "nitrogen")
        installNitrogenMenu
        ;;
      "wine")
        installWineMenu
        ;;
      "viber")
        installViberMenu
        ;;
      "Back")
        break
        ;;
    esac

  done
}

#
# show menu to install beta apps from different categories
#
function showAppBetaInstallMenu () {
  installBetaMenu
}

#
# show menu to install nightly apps from different categories
#
function showAppNightlyInstallMenu () {
  installNightlyMenu
}

#
# show menu about install/config hardware
#
function showHardwareMenu () {
  while true; do

    hardwareMenuOptions=$(whiptail \
    --title "Yggdrasil $version - System Tools" \
    --menu "System tools to diagnose and optimize" \
    25 80 16 \
    "cardreader" "Apps/tools needed for cardreaders" \
    "solaar" "Solaar for Logitech Unifying devices" \
    "webcam" "Install webcam neede apps" \
    "microcode" "Update Intel/AMD CPU microcode" \
    "nvidia370" "Install Nvidia 370 graphic drivers" \
    "nvidia375" "Install Nvidia 375 graphic drivers" \
    "nvidia378" "Install Nvidia 378 graphic drivers" \
    "nvidia381" "Install Nvidia 381 graphic drivers" \
    "nvidia384" "Install Nvidia 384 graphic drivers" \
    "tlp" "Install/Enable TLP for better power management " \
    "keyid" "Add udev rules for Key-ID FIDO U2F usb key" \
    "WI6320" "Fix Intel Wireless 6320 card config problem" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $hardwareMenuOptions in
      "cardreader")
        installCardReaderMenu
        ;;
      "solaar")
        installAppsFromListMenu
        ;;
      "webcam")
        installWebcamMenu
        ;;
      "microcode")
        updateMicrocode
        ;;
      "nvidia370")
        installNvidia370Menu
        ;;
      "nvidia375")
        installNvidia375Menu
        ;;
      "nvidia378")
        installNvidia378Menu
        ;;
      "nvidia381")
        installNvidia381Menu
        ;;
      "nvidia384")
        installNvidia384Menu
        ;;
      "tlp")
        installTLPMenu
        ;;
      "keyid")
        installKeyIDuDev
        ;;
      "WI6320")
        fixWirelessIntel6320
        ;;
      "Back")
        break
        ;;
    esac

  done
}