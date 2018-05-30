#!/bin/bash
#------------------------------------------------------------------------------#
# Yggdrasil NG                                                                 #
#    compatibility :  Mint 18, Ubuntu 16.04, Elementary and other derivatives  #
#    author : Francois B. (Makotosan/Shakasan)                                 #
#    licence : GPLv3                                                           #
#    website : https://makotonoblog.be/                                        #
#------------------------------------------------------------------------------#

#
# include functions and vars from external files
#
dir=$(dirname $0)
source /opt/yggdrasil/vars.sh
source /opt/yggdrasil/core_functions.sh
source /opt/yggdrasil/tools_functions.sh

OS=`lsb_release -d | awk -F':' '{print $2}' | awk -F'\t' '{print $2}'`
case $OS in
  *"Ubuntu 16.04"* | *"Linux Mint 18"*)
    source /opt/yggdrasil/repo_functions_ub1604.sh
    source /opt/yggdrasil/install_functions_ub1604.sh
    source /opt/yggdrasil/menus_functions_ub1604.sh
    ;;
  *"Ubuntu 18.04"* | *"Linux Mint 19"*)
    source /opt/yggdrasil/repo_functions_ub1804.sh
    source /opt/yggdrasil/install_functions_ub1804.sh
    source /opt/yggdrasil/menus_functions_ub1804.sh
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

while getopts ":h,v,f,c,u,a,d,q,s,t,n,g,w,p,k,T" option; do
  case "$option" in
    a) # install all apps
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Installing Apps"
      installBase
      installOffice
      installBurningTools
      installEbook
      installGames
      installSteam
      installInternet
      installJava10
      installMiscUtilities
      installMultimedia
      installNetTools
      installWine
      installCajaPlugins
      installNautilusAndPlugins
      installGimpPlugins
      installPidginPlugins
      installRhythmBoxPlugins
      msg "Installing HW related"
      installWebcam
      updateMicrocode
      msg "Applying system customizations"
      enableUFW
      enableNumLockX
      addScreenfetchBashrc
      enableHistoryTS
      installUnattendedUpgrades
      msg "Installing external apps"
      installViber
      installFranz
      installTeamViewer13
      installXnViewMP
      toolAutoremove
      ;;
    f) # full install
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Installing Apps"
      installBase
      installOffice
      installBurningTools
      installEbook
      installGames
      installSteam
      installInternet
      installJava10
      installMiscUtilities
      installMultimedia
      installNetTools
      installWine
      installCajaPlugins
      installNautilusAndPlugins
      installGimpPlugins
      installPidginPlugins
      installRhythmBoxPlugins
      msg "Installing HW related"
      installWebcam
      updateMicrocode
      installCardReader
      msg "Applying system customizations"
      enableUFW
      enableNumLockX
      addScreenfetchBashrc
      enableHistoryTS
      installUnattendedUpgrades
      enableUnbound
      msg "Installing additional themes/icons"
      installIcons
      installThemes
      msg "Installing external apps"
      installViber
      installFranz
      installTeamViewer13
      installXnViewMP
      toolAutoremove
      ;;
    c) # install themes and icons
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Installing Icons/Themes"
      installIcons
      installThemes
      ;;
    w) # nitrogen
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Installing Nitrogen"
      installNitrogen
      ;;
    d) # install Unbound DNS Cache
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Installing Unbound"
      installUnbound
      ;;
    q) # cardreader
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Installing Card Readers Apps"
      installCardReader
      ;;
    s) # solaar for logitech devices
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Installing Solaar"
      installSolaar
      ;;
    t) # tlp (laptop or low energy usage)
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Installing TLP"
      installTLP
      ;;
    n) # latest nvidia driver (see menus if need older version)
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Installing Nvidia Latest Driver"
      installNvidia396
      ;;
    g) # latest feee graphic drivers, mesa, ...
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Installing Free Graphic Drivers"
      installOibaf
      ;;
    k)
      if [ "$ygginitCount" -eq "0" ]; then
        msg "Initializing"
        yggInit
        msg "Updating the system"
        updateSystem
        ygginitCount=$(($ygginitCount+1))
      fi
      msg "Updating Kernel"
      kernelUpdate
      ;;
    u)
      msg "Initializing"
      yggInit
      msg "Updating the system"
      updateSystem
      exit
      ;;
    p)
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
"3" "Applications (BETA)" \
"4" "Applications (Nightly)" \
"5" "Themes & Icons" \
"6" "Dev Apps" \
"7" "System Config" \
"8" "System Tools" \
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
    showAppBetaInstallMenu
    ;;
  "4")
    showAppNightlyInstallMenu
    ;;
  "5")
    showThemesInstallMenu
    ;;
  "6")
    showDevInstallMenu
    ;;
  "7")
    showConfigMenu;
    ;;
  "8")
    showSysToolsMenu
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
