#------------------------------------------------------------------------------#
# Yggdrasil NG                                                                 #
#    compatibility :  Mint 18, Ubuntu 16.04, Elementary and other derivatives  #
#    author : Francois B. (Makotosan/Shakasan)                                 #
#    licence : GPLv3                                                           #
#    website : https://makotonoblog.be/                                        #
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# core functions                                                               #
#------------------------------------------------------------------------------#

#
# display a simple message + CR
#
function smsgn () {
    printf "$*\n"
}

#
# display a simple message
#
function smsg () {
    printf "$*"
}

#
# display a message + notification
#
function msg () {
  printf "\n"
  printf $JAUNE
  if [ "$#" -gt "0" ]; then
    printf "$*\n"
    /usr/bin/notify-send -t 7000 "$*"
  fi
  printf $NORMAL
}

#
# display a message between [ ] depending of the ret_code
#
function retCode () {
  typeset ret_code="$1"
  if [ $ret_code == 0 ]; then
    printf "[ "$BOLDVERT"OK"$NORMAL" ] "
  else
    printf "[ "$BOLDROUGE"!!"$NORMAL" ] "
  fi
  printf "\n"
}

#
# run a shell command and display a message between [ ] depending on the ret_code
#
function runCmd () {
  typeset cmd="$1"
  typeset txt="$2"
  typeset ret_code

  printf "[CMD] $txt "
  printf "\n[CMD] $txt : $cmd\n" &>> $logFile
  eval $cmd" &>> $logFile"
  ret_code=$?
  retCode $ret_code
}

#
# display a message + notification + ask to push a key to continue
#
function pressKey () {
  printf "$*\n"
  if which mpg123 >/dev/null; then
    mpg123 -q /opt/yggdrasil/notify.mp3 &
  fi
  printf $INV
  read -p "Press <Enter> key to continue ..."
  printf $NORMAL
}

#
# check if OS is Mint
#
function isMint () {
  OS=`lsb_release -d | awk -F':' '{print $2}' | awk -F'\t' '{print $2}'`
  if [[ $OS == *"Linux Mint 18"* ]]; then
    return 0
  else
    return 1
  fi
}

#
# check if DE is Mate
#
function isMate () {
  if [[ $DESKTOP_SESSION == *"mate"* ]]; then
    return 0
  else
    return 1
  fi
}

#
# check and install required dependencies for Yggdrasil
#
function yggInit () {
  typeset ret_code

  if ! dpkg --print-foreign-architectures | grep -qi i386; then
    printf "[INIT]"
    runCmd "sudo dpkg --add-architecture i386" \
           "adding i386 architecture"
  else
    printf "[INIT] i386 architecture already added [ "$BOLDVERT"OK"$NORMAL" ] \n"
  fi

  if ! grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -q ubuntu-make; then
    printf "[INIT][UMAKE] PPA not found, adding PPA...\n"
    printf "[INIT][UMAKE] PPA not found, adding PPA...\n" &>> $logFile
    addPPA "ubuntu-desktop/ubuntu-make"
  else
    printf "[INIT][UMAKE] PPA found [ "$BOLDVERT"OK"$NORMAL" ] \n"
  fi

  printf "[INIT][APT] update "
  printf "\n[INIT][APT] update\n" &>> $logFile
  sudo apt-get update &>> $logFile
  ret_code=$?
  retCode $ret_code

  printf "[INIT]"
  installPackage apt "apt-transport-https"

  if ! which umake >/dev/null; then
    printf "[INIT][UMAKE] not found, installing...\n"
    printf "\n[INIT][UMAKE] not found, installing...\n" &>> $logFile
    installPackage apt "ubuntu-make"
  else
    printf "[INIT][UMAKE] found [ "$BOLDVERT"OK"$NORMAL" ] \n"
  fi

  if ! which gem >/dev/null; then
    printf "[INIT][GEM] not found, installing...\n"
    printf "\n[INIT][GEM] not found, installing...\n" &>> $logFile
    installPackage apt "ruby-dev"
  else
    printf "[INIT][GEM] found [ "$BOLDVERT"OK"$NORMAL" ] \n"
  fi

  if ! which snap >/dev/null; then
    printf "[INIT][SNAP] not found, installing...\n"
    printf "\n[INIT][SNAP] not found, installing...\n" &>> $logFile
    installPackage apt "snapd"
  else
    printf "[INIT][SNAP] found [ "$BOLDVERT"OK"$NORMAL" ] \n"
  fi

  if ! which npm >/dev/null; then
    printf "[INIT][NPM] not found, installing...\n"
    printf "\n[INIT][NPM] not found, installing...\n" &>> $logFile
    installPackage apt "npm"
  else
    printf "[INIT][NPM] found [ "$BOLDVERT"OK"$NORMAL" ] \n"
  fi

  if ! which pip3 >/dev/null; then
    printf "[INIT][PIP] not found, installing...\n"
    printf "\n[INIT][PIP] not found, installing...\n" &>> $logFile
    printf "[INIT]"
    installPackage apt "python3-pip"
    printf "[INIT]"
    installPackage pip "pip"
    printf "[INIT]"
    installPackage pip "setuptools"
  else
    printf "[INIT][PIP] found [ "$BOLDVERT"OK"$NORMAL" ] \n"
    printf "[INIT]"
    installPackage pip "pip"
    printf "[INIT]"
    installPackage pip "setuptools"
  fi
}

#
# system update
#TODO: add pip, npm, gem
#
function updateSystem () {
  typeset ret_code

  printf "[APT] update "
  printf "\n[APT] update\n" &>> $logFile
  sudo apt-get update &>> $logFile
  ret_code=$?
  retCode $ret_code

  printf "[APT] upgrade "
  printf "\n[APT] upgrade\n" &>> $logFile
  sudo apt-get -y upgrade &>> $logFile
  ret_code=$?
  retCode $ret_code

  printf "[APT] dist-upgrade "
  printf "\n[APT] dist-upgrade\n" &>> $logFile
  sudo apt-get -y dist-upgrade &>> $logFile
  ret_code=$?
  retCode $ret_code

  if which snap >/dev/null; then
    printf "[SNAP] refresh "
    printf "\n[SNAP] refresh\n" &>> $logFile
    sudo snap refresh &>> $logFile
    ret_code=$?
    retCode $ret_code
  fi

  repoAdded=0
}

#
# add ppa
# input : ppa name
#
function addPPA () {
  typeset ret_code

  if ! grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -q $*; then
    printf "[PPA] adding : $* "
    printf "\n[PPA] adding $*\n" &>> $logFile
    sudo add-apt-repository -y "ppa:"$* &>> $logFile
    ret_code=$?
    retCode $ret_code
  else
    printf "[PPA] PPA already added [ "$BOLDVERT"OK"$NORMAL" ] \n"
  fi
}

#
# add repo's key
# input : file's url OR keyserver + key
#
function addKey () {
  typeset ret_code

  case $# in
    "1")
      printf "[REPO] adding key from file : $1 "
      printf "\n[REPO] adding key from file $1\n" &>> $logFile
      wget -qO - $1 | sudo apt-key add - &>> $logFile
      ret_code=$?
      retCode $ret_code
      ;;
    "2")
      printf "[REPO] adding key $2 from $1 "
      printf "\n[REPO] adding key $2 from $1\n" &>> $logFile
      gpg --keyserver $1 --recv-keys $2 &>> $logFile \
      && gpg -a --export $2 | sudo apt-key add - &>> $logFile
      ret_code=$?
      retCode $ret_code
      ;;
  esac
}

#
# create new entry in /etc/apt/source.list.d/
# input : filename, repo, src repo
#
function addRepo () {
  typeset ret_code
  printf "[REPO] adding : $2 in $1 "
  printf "\n[REPO] adding $2 in $1\n" &>> $logFile
  echo $2 | sudo tee /etc/apt/sources.list.d/$1 &>> $logFile
  ret_code=$?
  retCode $ret_code
  if [ "$#" -eq 3 ]; then
    printf "[REPO] adding : $3 in $1 "
    printf "\n[REPO] adding $3 in $1\n" &>> $logFile
    echo $3 | sudo tee -a /etc/apt/sources.list.d/$1 &>> $logFile
    ret_code=$?
    retCode $ret_code
  fi
}

#
# install package manually
# input : url of package, package name
#
function installPackageDpkg () {
  printf "[PKG] Installing $2 from $1 "
  printf "\n[PKG] installing $2 from $1\n" &>> $logFile
  cd /tmp \
  && wget -q -O $2 $1 &>> $logFile \
  && sudo dpkg -i $2 &>> $logFile
  sudo apt-get install -fy &>> $logFile
  ret_code=$?
  retCode $ret_code
}

#
# install package from repositories
# input : package manager, package name
# package manager available : apt, pip, npm, gem, snap
# TODO: add apm, flatpak, umake?
#
function installPackage () {
  typeset pkg="$2"
  typeset ret_code

  case $1 in
  "apt")
    printf "[APT] Installing $pkg "
    printf "\n[APT] installing $pkg\n" &>> $logFile
    sudo apt-get install -fy $pkg &>> $logFile
    ret_code=$?
    retCode $ret_code
    ;;
  "pip")
    if which pip3 >/dev/null; then
      printf "[PIP] Installing $pkg "
      printf "\n[PIP] installing $pkg\n" &>> $logFile
      sudo -H pip3 install --upgrade $pkg &>> $logFile
      ret_code=$?
      retCode $ret_code
    fi
    ;;
  "npm")
    if which npm >/dev/null; then
      printf "[NPM] Installing $pkg "
      printf "\n[NPM] installing $pkg\n" &>> $logFile
      sudo npm install -g $pkg &>> $logFile
      ret_code=$?
      retCode $ret_code
    fi
    ;;
  "gem")
    if which gem >/dev/null; then
      printf "[GEM] Installing $pkg "
      printf "\n[GEM] installing $pkg\n" &>> $logFile
      sudo gem install $pkg &>> $logFile
      ret_code=$?
      retCode $ret_code
    fi
    ;;
  "snap")
    if which snap >/dev/null; then
      printf "[SNAP] Installing $pkg "
      printf "\n[SNAP] installing $pkg\n" &>> $logFile
      sudo snap install $pkg --classic &>> $logFile
      ret_code=$?
      retCode $ret_code
    fi
    ;;
  esac
}

#
# check dependency and install it if necessary
# input : package manager, package name, cmd/bin to check
#
function checkAndInstallDep () {
  if ! which $3 >/dev/null; then
    printf "[DEP] dependency $2 not found [ "$BOLDROUGE"!!"$NORMAL" ]\n"
    printf "[DEP] dependency $2 not found\n" &>> $logFile
    case $1 in
      "apt")
        installPackage apt $2
        ;;
      "npm")
        installPackage npm $2
        ;;
      "pip")
        installPackage pip $2
        ;;
      "gem")
        installPackage gem $2
        ;;
      "snap")
        installPackage snap $2
        ;;
    esac
  fi
}

#
# add specific repository for a given package
# input : unique ID, apt cache update yes/no
#
function addSpecificRepoFct () {
  for i in $AppsRepo; do
    appRepo=(${i//;/ })
    if [ "${appRepo[0]}" == "$1" ]; then
      printf "[ADD] package -- $1 -- repo/ppa "
      printf "added by function -- ${appRepo[1]} --\n"
      eval "${appRepo[1]}"
      repoAdded=$(($repoAdded+1))
    fi
  done
  if [ "$2" == "yes" ]; then
    updateSystem
  fi
  unset i
  unset appRepo
}

#
# find and execute Pre/Post install functions for a specific app
# input : unique ID
#
function processAppTrtFct () {
  for i in $AppsTrtFct; do
    appTrtFct=(${i//;/ })
    if [ "${appTrtFct[0]}" == "$1" ]; then
      printf "[TRT] package -- $1 -- "
      printf "post install processed by -- ${appTrtFct[1]} --"
      eval "${appTrtFct[1]}"
    fi
  done
}

#
# install all about a specific category from Apps array app list (headless)
# input : category name
#
function installAppsFromList () {
  msg "Installing apps from $1 category"
  for i in $Apps; do
    app=(${i//;/ })
    if [ "${app[2]}" == "$1" ]; then
      addSpecificRepoFct ${app[3]}
    fi
  done
  unset i
  unset app
  if [ "$repoAdded" -gt "0" ]; then
    updateSystem
  fi
  for i in $Apps; do
    app=(${i//;/ })
    if [ "${app[2]}" == "$1" ]; then
      installPackage ${app[1]} ${app[0]}
      processAppTrtFct ${app[3]}
    fi
  done
}

#
# generate install apps menu about a specific category from Apps array app list (Menu)
# input : category name
#
function installAppsFromListMenu () {
  for i in $Apps; do
    app=(${i//;/ })
    if [ "${app[2]}" == "$1" ]; then
      list+=("${app[3]}" "${app[3]}" "ON")
    fi
  done

  pkg=$(whiptail \
  --title "Yggdrasil $version - App Install ($1)" \
  --checklist \
  "Select app to install and press OK" 25 80 19 \
  "${list[@]}" 3>&1 1>&2 2>&3)

  exitstatus=$?
  if [ $exitstatus = 0 ]; then
    for pkgToInstall in $pkg; do
      for i in $Apps; do
        app=(${i//;/ })
        if [ "${app[3]}" == "${pkgToInstall//\"}" ]; then
          addSpecificRepoFct ${app[3]}
        fi
      done
    done
    unset i
    unset app
    unset pkgToInstall
    if [ "$repoAdded" -gt "0" ]; then
      updateSystem
    fi
    for pkgToInstall in $pkg; do
      for i in $Apps; do
        app=(${i//;/ })
        if [ "${app[3]}" == "${pkgToInstall//\"}" ]; then
          installPackage ${app[1]} ${app[0]}
          processAppTrtFct ${app[3]}
        fi
      done
    done
  fi
  unset list
  pressKey
}

#
# create app shortcut
# inputs : bin to exec, icon path, category, name, local/global, start w/ session
#
function createAppShortcut () {
  typeset ret_code

  shortcut='[Desktop Entry]\n'
  shortcut+='Encoding=UTF-8\n'
  shortcut+='Terminal=0\n'
  shortcut+='Exec='$1'\n'
  shortcut+='Icon='$2'\n'
  shortcut+='Type=Application\n'
  if [ "$6" == "start" ]; then
    shortcut+='X-MATE-Autostart-enabled=true\n\n'
  else
    shortcut+='Categories='$3';\n'
  fi
  shortcut+='StartupNotify=true\n'
  shortcut+='Name='$4'\n'
  shortcut+='GenericName='$4'\n'
  shortcut+='Comment='

  if [ "$5" == "global" ]; then
    smsg "creating shortcut for $4 "
    echo -e $shortcut > /usr/share/applications/"$4".desktop
    ret_code=$?
    retCode $ret_code
  else
    mkdir -p /home/$myHomedir/.local/share/applications
    smsg "creating shortcut for $4 "
    echo -e $shortcut > /home/"$myHomedir"/.local/share/applications/"$4".desktop
    ret_code=$?
    retCode $ret_code
  fi
}

#
# show Yggdrasil logo
#
function dispLogo () {
  printf "\n"
  printf $BOLDJAUNE
  printf "██╗   ██╗ ██████╗  ██████╗ ██████╗ ██████╗  █████╗ ███████╗██╗██╗     \n"
  printf "╚██╗ ██╔╝██╔════╝ ██╔════╝ ██╔══██╗██╔══██╗██╔══██╗██╔════╝██║██║     \n"
  printf " ╚████╔╝ ██║  ███╗██║  ███╗██║  ██║██████╔╝███████║███████╗██║██║     \n"
  printf "  ╚██╔╝  ██║   ██║██║   ██║██║  ██║██╔══██╗██╔══██║╚════██║██║██║     \n"
  printf "   ██║   ╚██████╔╝╚██████╔╝██████╔╝██║  ██║██║  ██║███████║██║███████╗\n"
  printf "   ╚═╝    ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚══════╝\n"
  printf "$BOLDROUGE                 Customize Linux Mint & Ubuntu derivatives made easier\n"
  printf "$BOLDBLANC         ver "$version" - GPLv3 - Francois B. (Makotosan) - makotonoblog.be\n"
	printf "\n"
}

#
# show usage for headless mode
#
function usage () {
  dispLogo
  dispSysInfos
  printf "\n"
	printf $NORMAL
	printf "Usage : yggdrasil [options]\n\n"
  printf " "$BOLDVERT"-f"$NORMAL" : install everything (=a+c+w+d+k)\n"
  printf " "$BOLDVERT"-a"$NORMAL" : install all apps\n"
  printf " "$BOLDVERT"-c"$NORMAL" : install gtk themes and icons\n"
  printf " "$BOLDVERT"-w"$NORMAL" : install Nitrogen + remove desktop management from caja\n"
  printf " "$BOLDVERT"-d"$NORMAL" : install DNS Cache Unbound\n"
  printf " "$BOLDVERT"-k"$NORMAL" : install cardreader apps\n"
  printf " "$BOLDVERT"-s"$NORMAL" : install Solaar for Logitech devices\n"
  printf " "$BOLDVERT"-t"$NORMAL" : install TLP for Laptops and low energy usage\n"
  printf " "$BOLDVERT"-n"$NORMAL" : install lastest Nvidia graphic drivers\n"
  printf " "$BOLDVERT"-u"$NORMAL" : update system (apt,snap,...)\n"
  printf " "$BOLDVERT"-p"$NORMAL" : clean useless packages\n"
	printf " "$BOLDVERT"-v"$NORMAL" : show verison number\n"
  printf " "$BOLDVERT"-h"$NORMAL" : show help & informations\n"
  printf "\n"
}

function dispSysInfos () {
  # CPU Architecture
  printf $BOLDVERT"Architecture : "$NORMAL
  uname -m

  # Current user homedir
  printf $BOLDVERT"User (userdir) :"$NORMAL" $myHomedir\n"

  # Linux Distro Name
  printf $BOLDVERT"OS : "$NORMAL
  lsb_release -d | awk -F':' '{print $2}' | awk -F'\t' '{print $2}'

  # Kernel version
  printf $BOLDVERT"Kernel : "$NORMAL
  uname -r

  # Desktop Name
  printf $BOLDVERT"Desktop : "$NORMAL
  case $XDG_CURRENT_DESKTOP in
    "ENLIGHTENMENT")
      printf "Enlightenment"
      printf "\n"
      ;;
    "GNOME")
      printf "Gnome"
      printf "\n"
      ;;
    "KDE")
      printf "KDE"
      printf "\n"
      ;;
    "LXDE")
      printf "LXDE"
      printf "\n"
      ;;
    "MATE")
      printf "Mate"
      printf "\n"
      ;;
    "XFCE")
      printf "XFCE"
      printf "\n"
      ;;
    "X-Cinnamon")
      printf "Cinnamon"
      printf "\n"
      ;;
    "Unity")
      printf "Unity"
      printf "\n"
      ;;
  esac

  # Screen Resolution
  printf $BOLDVERT"Screen resolution : "$NORMAL
  xdpyinfo | sed -n 's/.*dim.* \([0-9]*x[0-9]*\) .*/\1/pg' | tr '\n' ' '
  printf "\n"

  # Type of Shell
  printf $BOLDVERT"Shell : "$NORMAL
	shellType=$(ps -p $PPID -o cmd --no-heading)
  shellType=${shellType/-}
  shellType=${shellType//*\/}
  printf $shellType"\n"
}