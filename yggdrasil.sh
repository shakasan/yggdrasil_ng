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
source ./vars.sh
source ./core_functions.sh
source ./repo_functions.sh
source ./install_functions.sh
source ./menus_functions.sh
source ./tools_functions.sh

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

#
# arguments/options management with getopts
#
while getopts ":h,v,f,c,t,u" option; do
  case "$option" in
    t) #test purpose only
      #yggInit
      #installIdea
      #installNetTools
      #installOffice
      #addPPA "tmsu/ppa"
      exit
      ;;
    f) # install all apps
      yggInit
      updateSystem
      addRequiredPPA
      installBase
      installOffice
      installBurningTools
      installCajaPlugins
      installNautilusAndPlugins
      installEbook
      installGames
      installGimpPlugins
      installInternet
      installJava9
      installMiscUtilities
      installMultimedia
      installNetTools
      installOffice
      installPidginPlugins
      installRhythmBoxPlugins
      installWine
      installViber
      installFranz
      exit
      ;;
    c) # install themes and icons
      yggInit
      updateSystem
      addRequiredPPA
      installIcons
      installThemes
      exit
      ;;
    u)
      yggInit
      updateSystem
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

#-----------------------------------------------------------------------------#
# Menu Mode                                                                   #
#-----------------------------------------------------------------------------#

clear

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
"2" "Add required PPA/Repo" \
"3" "Applications" \
"4" "Applications (BETA)" \
"5" "Applications (Nightly)" \
"6" "Themes & Icons" \
"7" "Dev Apps" \
"8" "System Config" \
"9" "System Tools" \
"10" "Reboot this computer" \
"11" "About Yggdrasil" \
"12" "Quit"  3>&1 1>&2 2>&3)

case $mainMenuOptions in
  "1")
    updateSystem
    pressKey
    ;;
  "2")
    addRequiredPPA
    pressKey
    ;;
  "3")
    showAppInstallMenu
    ;;
  "4")
    showAppBetaInstallMenu
    ;;
  "5")
    showAppNightlyInstallMenu
    ;;
  "6")
    showThemesInstallMenu
    ;;
  "7")
    showDevInstallMenu
    ;;
  "8")
    showConfigMenu;
    ;;
  "9")
    showSysToolsMenu
    ;;
  "10")
    showRebootBoxMenu
    ;;
  "11")
    showAboutBoxMenu
    ;;
  "12")
    exit
    ;;
esac # main menu
done # end of main menu loop

clear
exit