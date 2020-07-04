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
    "TmpRAM" "/tmp stored in RAM" \
    "screenfetch" "screenfetch added to .bashrc" \
    "historyTS" "TimeStamp enabled in Shell History" \
    "unattendedUpgrades" "Enable automatic security updates" \
    "Unbound" "Enable Unbound DNS Cache server" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $configMenuOptions in
      "TmpRAM")
        clear
        enableTmpRAM
        pressKey
        ;;
      "historyTS")
        clear
        enableHistoryTS
        pressKey
        ;;
      "unattendedUpgrades")
        clear
        installAppsFromList unattended-upgrades
        pressKey
        ;;
      "Unbound")
        clear
        installAppsFromList unbound
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
    "Autoremove" "Remove useless Deb packages" \
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
      "Autoremove")
        clear; toolAutoremove; pressKey
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
        installAppsFromListMenu gtkthemes
        ;;
      "icons")
        installAppsFromListMenu icons
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
    "java11" "OpenJDK Java 11 dev env" \
    "javascript" "JavaScript dev env" \
    "mongodbce" "MongoDB CE" \
    "php" "PHP dev env" \
    "lua" "Lua dev env" \
    "ruby" "Ruby dev env" \
    "qt" "QT dev env" \
    "python" "Python dev env" \
    "atom" "Atom" \
    "anjuta" "Anjuta" \
    "brackets" "Brackets" \
    "codeblocks" "CodeBlocks" \
    "geany" "Geany" \
    "idea" "Idea" \
    "eclipse" "Eclipse" \
    "pycharmprofessional" "PyCharm Professional edition" \
    "pycharmcommunity" "PyCharm Community edition" \
    "vsc" "Visual Studio Code" \
    "androidstudio" "Android Studio" \
    "sublimetext" "Sublime Text" \
    "cad" "CAD tools" \
    "teamviewer13" "Teamviewer 13" \
    "boostnotes" "Boostnotes Markdown wiki app" \
    "compass" "MongoDB Compass GUI" \
    "gitkraken" "Gitkraken git gui" \
    "vagrant" "Vagrant" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $devInstallMenuOptions in
      "devbase")
        installAppsFromListMenu dev
        ;;
      "java11")
        installAppsFromListMenu java11
        ;;
      "javascript")
        installAppsFromListMenu javascript
        ;;
      "mongodbce")
        installAppsFromListMenu mongodb
        ;;
      "php")
        installAppsFromListMenu php
        ;;
      "lua")
        installAppsFromListMenu lua
        ;;
      "ruby")
        installAppsFromListMenu ruby
        ;;
      "qt")
        installAppsFromListMenu qt
        ;;
      "python")
        installAppsFromListMenu python
        ;;
      "atom")
        installAppsFromListMenu atom
        ;;
      "anjuta")
        installAppsFromListMenu anjuta
        ;;
      "brackets")
        installAppsFromListMenu brackets
        ;;
      "codeblocks")
        installAppsFromListMenu codeblocks
        ;;
      "geany")
        installAppsFromListMenu geany
        ;;
      "idea")
        installAppsFromListMenu idea
        ;;
      "eclipse")
        installAppsFromListMenu eclipse
        ;;
      "pycharmprofessional")
        installAppsFromListMenu pycharm-professional
        ;;
      "pycharmcommunity")
        installAppsFromListMenu pycharm-community
        ;;
      "vsc")
        installAppsFromListMenu code
        ;;
      "androidstudio")
        installAppsFromListMenu androidstudio
        ;;
      "sublimetext")
        installAppsFromListMenu sublime-text
        ;;
      "cad")
        installAppsFromListMenu cad
        ;;
      "teamviewer13")
        installTeamViewer13Menu
        ;;
      "boostnotes")
        installBoostnotesMenu
        ;;
      "compass")
        installCompassMenu
        ;;
      "gitkraken")
        installAppsFromListMenu gitkraken
        ;;
      "vagrant")
        installVagrantMenu
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
    "ebook" "eBook Apps" \
    "internet" "Internet Apps" \
    "utilities" "Misc Utilities" \
    "games" "Games & tools" \
    "steam" "Steam" \
    "burningtools" "Disc Burning and tools" \
    "nettools" "Network tools" \
    "cajaplugins" "Caja Plugins" \
    "nautilus" "Nautilus and plugins" \
    "thunar" "Thunar file manager" \
    "gimp" "Gimp plugins" \
    "rhythmbox" "RhythmBox plugins" \
    "pidgin" "Pidgin plugins" \
    "nitrogen" "Nitrogen WP Manager" \
    "wine" "Wine Builds" \
    "snap" "Unlock/Install SNAP + Store" \
    "viber" "Viber IM desktop app" \
    "slack" "Slack App" \
    "appimagelauncher" "AppImage Launcher" \
    "xnviewmp" "XNView MP" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $appsInstallMenuOptions in
      "base")
        installAppsFromListMenu base
        ;;
      "office")
        installAppsFromListMenu office
        ;;
      "multimedia")
        installAppsFromListMenu multimedia
        ;;
      "ebook")
        installAppsFromListMenu ebook
        ;;
      "internet")
        installAppsFromListMenu internet
        ;;
      "utilities")
        installAppsFromListMenu utilities
        ;;
      "games")
        installAppsFromListMenu games
        ;;
      "steam")
        installAppsFromListMenu steam
        ;;
      "burningtools")
        installAppsFromListMenu burningtools
        ;;
      "nettools")
        installAppsFromListMenu nettools
        ;;
      "cajaplugins")
        installAppsFromListMenu cajaplugins
        ;;
      "nautilus")
        installAppsFromList nautilus
        ;;
      "thunar")
        installAppsFromListMenu thunar
        ;;
      "gimp")
        installAppsFromListMenu gimp
        ;;
      "rhythmbox")
        installAppsFromListMenu rhythmbox
        ;;
      "pidgin")
        installAppsFromListMenu pidgin
        ;;
      "nitrogen")
        installAppsFromListMenu nitrogen
        ;;
      "wine")
        installAppsFromListMenu wine
        ;;
      "snap")
        installAppsFromListMenu snap
        ;;
      "viber")
        installViberMenu
        ;;
      "slack")
        installSlackMenu
        ;;
      "appimagelauncher")
        installAppImageLauncherMenu
        ;;
      "xnviewmp")
        installXnViewMPMenu
        ;;
      "Back")
        break
        ;;
    esac

  done
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
    "HWE" "Ubuntu Hardware Enablement Stack (newer kernel+xorg)" \
    "cardreader" "Apps/tools needed for cardreaders" \
    "solaar" "Solaar for Logitech Unifying devices" \
    "webcam" "Install webcam neede apps" \
    "microcode" "Update Intel/AMD CPU microcode" \
    "tlp" "Install/Enable TLP for better power management " \
    "keyid" "Add udev rules for Key-ID FIDO U2F usb key" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $hardwareMenuOptions in
      "HWE")
        installAppsFromListMenu hwe
        ;;
      "cardreader")
        installAppsFromListMenu cardreader
        ;;
      "solaar")
        installAppsFromListMenu solaar
        ;;
      "webcam")
        installAppsFromListMenu webcam
        ;;
      "microcode")
        updateMicrocode
        pressKey
        ;;
      "tlp")
        installAppsFromListMenu tlp
        ;;
      "keyid")
        installKeyIDuDev
        pressKey
        ;;
      "Back")
        break
        ;;
    esac

  done
}
