#!/bin/bash
#-----------------------------------------------------------------------------#
# Yggdrasil NG                                                                #
#    compatibility :  Mint 19, Ubuntu 18.04                                   #
#    author : Francois B. (Makotosan/Shakasan)                                #
#    licence : GPLv3                                                          #
#    website : https://makotonoblog.be/                                       #
#-----------------------------------------------------------------------------#

#
# include functions and vars from external files
#
dir=$(dirname $0)
source /opt/yggdrasil/vars.sh || exit 1
source /opt/yggdrasil/core_functions.sh || exit 1
source /opt/yggdrasil/tools_functions.sh || exit 1

OS=`lsb_release -d | awk -F':' '{print $2}' | awk -F'\t' '{print $2}'`
case $OS in
  *"Ubuntu 16.04"* | *"Linux Mint 18"*)
    printf "\n"
    printf $BOLDROUGE"Yggdrasil for Ubuntu 16.04 / Linux Mint 18 is no longer available.\n"$NORMAL
    printf "If you still need it, use an older version of Yggdrasil previous to 0.5.1.\n"
    printf "Thanks for using Yggdrasil"
    printf "\n"
    ;;
  *"Ubuntu 18.04"* | *"Linux Mint 19"*)
    source /opt/yggdrasil/repo_functions_ub1804.sh || exit 1
    source /opt/yggdrasil/install_functions_ub1804.sh || exit 1
    source /opt/yggdrasil/menus_functions_ub1804.sh || exit 1
    ;;
  *"Ubuntu 20.04"* | *"Linux Mint 20"*)
    source /opt/yggdrasil/repo_functions_ub2004.sh || exit 1
    source /opt/yggdrasil/install_functions_ub2004.sh || exit 1
    source /opt/yggdrasil/menus_functions_ub2004.sh || exit 1
    ;;
  *)
    printf "\n"
    printf $BOLDROUGE"Linux distro not supported"$NORMAL
    printf "\n\n"
    ;;
esac

#
# check if the script is running in root/sudo
# NEVER run the script as root or with sudo !!!!
#
if ! [ "$UID" -ne "0" ]; then
  printf "\n"
  printf $BOLDROUGE"Yggdrasil can't be run as root/sudo, please retry as normal user"$NORMAL
  printf "\n\n"
  exit
fi

#
# add a mark to the log file at every script run
#
echo "--[ Yggdrasil log ]--[ "$cDate" ]--[ "$cTime" ]-----------------------" >> $logFile

#-----------------------------------------------------------------------------#
# Headless Mode                                                               #
#-----------------------------------------------------------------------------#

# display logo in CLI mode
[[ $# -gt 0 ]] && dispLogo

#
# arguments/options management with getopts

while getopts ":h,v,f,c,u,a,d,q,s,t,w,g,k,p" option; do
  case "$option" in
    a) # install all apps
      if [ $ygginitCount = false ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=true
      fi
      msg "Installing Apps"
      installAppsFromList base
      installAppsFromList office
      installAppsFromList burningtools
      installAppsFromList ebook
      installAppsFromList games
      installAppsFromList steam
      installAppsFromList internet
      installAppsFromList java11
      installAppsFromList utilities
      installAppsFromList multimedia
      installAppsFromList nettools
      installAppsFromList wine
      installAppsFromList cajaplugins
      installAppsFromList nautilus
      installAppsFromList thunar
      installAppsFromList gimp
      installAppsFromList pidgin
      installAppsFromList rhythmbox
      msg "Installing HW related"
      installAppsFromList webcam
      updateMicrocode
      msg "Applying system customizations"
      enableUFW
      enableNumLockX
      addScreenfetchBashrc
      enableHistoryTS
      installUnattendedUpgrades
      msg "Installing external apps"
      installViber
      installBoostnotes
      installTeamViewer13
      installXnViewMP
      installAppImageLauncher
      ;;
    f) # full install
      if [ $ygginitCount = false ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=true
      fi
      msg "Installing Apps"
      installAppsFromList base
      installAppsFromList office
      installAppsFromList burningtools
      installAppsFromList ebook
      installAppsFromList games
      installAppsFromList steam
      installAppsFromList internet
      installAppsFromList java11
      installAppsFromList utilities
      installAppsFromList multimedia
      installAppsFromList nettools
      installAppsFromList wine
      installAppsFromList cajaplugins
      installAppsFromList nautilus
      installAppsFromList thunar
      installAppsFromList gimp
      installAppsFromList pidgin
      installAppsFromList rhythmbox
      msg "Installing HW related"
      installAppsFromList webcam
      updateMicrocode
      installAppsFromList cardreader
      msg "Applying system customizations"
      enableUFW
      enableNumLockX
      addScreenfetchBashrc
      enableHistoryTS
      installUnattendedUpgrades
      installAppsFromList unbound
      msg "Installing additional themes/icons"
      installAppsFromList icons
      installAppsFromList gtkthemes
      msg "Installing external apps"
      installViber
      installBoostnotes
      installTeamViewer13
      installXnViewMP
      installAppImageLauncher
      ;;
    c) # install themes and icons
      if [ $ygginitCount = false ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=true
      fi
      msg "Installing Icons/Themes"
      installAppsFromList icons
      installAppsFromList gtkthemes
      ;;
    w) # nitrogen
      if [ $ygginitCount = false ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=true
      fi
      msg "Installing Nitrogen"
      installAppsFromList nitrogen
      ;;
    d) # install Unbound DNS Cache
      if [ $ygginitCount = false ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=true
      fi
      msg "Installing Unbound"
      installAppsFromList unbound
      ;;
    q) # cardreader
      if [ $ygginitCount = false ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=true
      fi
      msg "Installing Card Readers Apps"
      installAppsFromList cardreader
      ;;
    s) # solaar for logitech devices
      if [ $ygginitCount = false ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=true
      fi
      msg "Installing Solaar"
      installAppsFromList solaar
      ;;
    t) # tlp (laptop or low energy usage)
      if [ $ygginitCount = false ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=true
      fi
      msg "Installing TLP"
      installAppsFromList tlp
      ;;
    k) # Ubuntu Hardware Enablement Stack
      if [ $ygginitCount = false ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=true
      fi
      msg "Installing HWE (newer kernel+xorg)"
      installAppsFromList hwe
      ;;
    g) # Unlock+Install SNAP + Store
      if [ $ygginitCount = false ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=true
      fi
      msg "Unlock/Install SNAP + Store"
      installAppsFromList snap
      ;;
    u)
      msg "Initializing"
      yggInit
      msg "Updating the system"
      updateSystem
      exit
      ;;
    p)
      msg "Removing useless dependencies"
      toolAutoremove
      exit
      ;;
    h) # display help
      usage
      exit
      ;;
    v) # display version number
      printf "Yggdrasil version : $version\n"
      exit
      ;;
    :) # display error message in case of missing argument(s)
      usage
      printf "\nError : Option $OPTARG : missing argument\n"
      exit 1
      ;;
    \?) # display error message in case of invalid option
      usage
      printf "\nError : $OPTARG : invalid option\n"
      exit 1
      ;;
  esac
done

# if CLI mode, no need to run the menus...
[[ $# -gt 0 ]] && exit

#-----------------------------------------------------------------------------#
# Menu Mode                                                                   #
#-----------------------------------------------------------------------------#

# show Yggdrasil logo
dispLogo

# show system informations
dispSysInfos

# Useless by itself, but is used to don't be annoyed later in the script
sudo echo

# init, check and install/update dependencies
yggInit

pressKey

# Apps dir created if necessary
mkdir -p /home/$myHomedir/Apps

#-----------------------------------------------------------------------------#
# Main menu                                                                   #
#-----------------------------------------------------------------------------#

while true; do # main menu loop

mainMenuOptions=$(whiptail \
--title "Yggdrasil $version - Main Menu" \
--menu "This tool will help you to install all needed applications and cutomize your fresh install of Mint/Ubuntu/Elementary/..." \
25 80 16 \
"1" "System update" \
"2" "Applications" \
"3" "Themes & Icons" \
"4" "Dev Apps" \
"5" "System Config" \
"6" "Hardware" \
"7" "System Tools" \
"8" "Add Makoto no Blog repository" \
"9" "Reboot this computer" \
"10" "About Yggdrasil" \
"11" "Quit"  3>&1 1>&2 2>&3)

case $mainMenuOptions in
  "1")
    updateSystem
    pressKey
    ;;
  "2")
    showAppInstallMenu
    ;;
  "3")
    showThemesInstallMenu
    ;;
  "4")
    showDevInstallMenu
    ;;
  "5")
    showConfigMenu;
    ;;
  "6")
    showHardwareMenu
    ;;
  "7")
    showSysToolsMenu
    ;;
  "8")
    addRepo_Makoto
    ;;
  "9")
    showRebootBoxMenu
    ;;
  "10")
    showAboutBoxMenu
    ;;
  "11")
    exit
    ;;
esac # main menu
done # end of main menu loop

clear
exit
