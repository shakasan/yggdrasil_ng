#-----------------------------------------------------------------------------#
# Yggdrasil NG                                                                #
#    compatibility : see documentation or man pages                           #
#    author : Francois B. (Makotosan/Shakasan)                                #
#    licence : GPLv3                                                          #
#    website : https://makotonoblog.be/                                       #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
#                                                                             #
# Ubuntu 16.04 / Linux Mint 18                                                #
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
    "Ufw" "Enable Firewall (ufw)" \
    "NumLockX" "NumLock Enabled at boot time" \
    "TmpRAM" "/tmp stored in RAM" \
    "screenfetch" "screenfetch added to .bashrc" \
    "historyTS" "TimeStamp enabled in Shell History" \
    "unattendedUpgrades" "Enable automatic security updates" \
    "Unbound" "Enable Unbound DNS Cache server" \
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
      "Unbound")
        clear
        installUnbound
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
    "java10" "Java 10 dev env" \
    "javascript" "JavaScript dev env" \
    "mongodb3ce" "MongoDB 3 CE" \
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
      "java10")
        installJava10
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
    "steam" "Steam" \
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
      "steam")
        installSteamMenu
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
    "oibaf" "latest version of free graphic drivers, mesa, ..." \
    "nvidia370" "Install Nvidia 370 graphic drivers" \
    "nvidia375" "Install Nvidia 375 graphic drivers" \
    "nvidia378" "Install Nvidia 378 graphic drivers" \
    "nvidia381" "Install Nvidia 381 graphic drivers" \
    "nvidia384" "Install Nvidia 384 graphic drivers" \
    "nvidia387" "Install Nvidia 387 graphic drivers" \
    "nvidia390" "Install Nvidia 390 graphic drivers" \
    "nvidia396" "Install Nvidia 396 graphic drivers" \
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
      "oibaf")
        installOibafMenu
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
      "nvidia387")
        installNvidia387Menu
        ;;
      "nvidia390")
        installNvidia390Menu
        ;;
      "nvidia396")
        installNvidia396Menu
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