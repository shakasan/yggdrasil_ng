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
if [ ! $dir == "/opt/yggdrasil" ]; then
  source /opt/yggdrasil/vars.sh
  source /opt/yggdrasil/core_functions.sh
  source /opt/yggdrasil/repo_functions.sh
  source /opt/yggdrasil/install_functions.sh
  source /opt/yggdrasil/menus_functions.sh
  source /opt/yggdrasil/tools_functions.sh
else
  source $(dirname $0)/vars.sh
  source $(dirname $0)/core_functions.sh
  source $(dirname $0)/repo_functions.sh
  source $(dirname $0)/install_functions.sh
  source $(dirname $0)/menus_functions.sh
  source $(dirname $0)/tools_functions.sh
fi

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
while getopts ":h,v,f,c,t,u,a,d,k,s,t,n" option; do
  case "$option" in
    t) #test purpose only
      #yggInit
      #installIdea
      #installNetTools
      #installOffice
      #addPPA "tmsu/ppa"
      exit
      ;;
    a) # install all apps
       # except
       # apps : Nitrogen, Beta apps, Nightly, Unboud
       # hw : solaar, cardreader, fixWirelessIntel6320, nvidia drivers
       #      tlp, KeyID
       # dev apps : all
       # customization : themes, icons
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
      installTeamViewer13
      installWebcam
      updateMicrocode
      enableUFW
      enableNumLockX
      addScreenfetchBashrc
      enableHistoryTS
      installUnattendedUpgrades
    f) # full install
       # except 
       # apps : Nitrogen, Beta apps, Nightly, Unboud
       # hw : solaar, cardreader, fixWirelessIntel6320, nvidia drivers
       #      tlp, KeyID
       # tweak : /tmp in ram
       #TODO: dev apps
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
      installTeamViewer13
      installWebcam
      updateMicrocode
      enableUFW
      enableNumLockX
      addScreenfetchBashrc
      enableHistoryTS
      installUnattendedUpgrades
      installIcons
      installThemes
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
    d) # install Unbound DNS Cache
      yggInit
      updateSystem
      enableUnbound
      exit
      ;;
    k) # cardreader
      yggInit
      updateSystem
      installCardReader
      exit
      ;;
    s) # solaar for logitech devices
      yggInit
      updateSystem
      installSolaar
      exit
      ;;
    t) # tlp (laptop or low energy usage)
      yggInit
      updateSystem
      installTLP
      exit
      ;;
    n) # latest nvidia driver (see menus if need older version)
      yggInit
      updateSystem
      installNvidia384
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