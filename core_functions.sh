#------------------------------------------------------------------------------#
# Yggdrasil NG                                                                 #
#    compatibility :  Mint 18, Ubuntu 16.04, Elementary and other derivatives  #
#    author : Francois B. (Makotosan/Shakasan)                                 #
#    licence : GPLv3                                                           #
#    website : https://makotonoblog.be/
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
  printf "$JAUNE"
  if [ "$#" -gt "0" ]; then
    printf "$*\n"
    /usr/bin/notify-send -t 7000 "$*"
  fi
  printf "$NORMAL"
}

#
# display a message between [ ] depending of the ret_code
#
function retCode () {
  typeset ret_code="$1"
  if [ $ret_code == 0 ]; then
    printf "[ ""$BOLDVERT""OK"$NORMAL" ] "
  else
    printf "[ ""$BOLDROUGE""!!"$NORMAL" ] "
  fi
  #printf "\n"
}

#
# run a shell command and display a message between [ ] depending on the ret_code
#
function runCmd () {
  typeset cmd="$1"
  typeset ret_code

  printf "[CMD] executing : $cmd "
  printf "\n[CMD] executing $cmd\n" &>> $logFile
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
    mpg123 -q $scriptDir/notify.mp3 &
  fi
  printf "$INV"
  read -p "Press <Enter> key to continue ..."
  printf "$NORMAL"
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
  printf "\n"

  printf "[APT] upgrade "
  printf "\n[APT] upgrade\n" &>> $logFile
  sudo apt-get -y upgrade &>> $logFile
  ret_code=$?
  retCode $ret_code
  printf "\n"

  printf "[APT] dist-upgrade "
  printf "\n[APT] dist-upgrade\n" &>> $logFile
  sudo apt-get -y dist-upgrade &>> $logFile
  ret_code=$?
  retCode $ret_code
  printf "\n"

  printf "[SNAP] refresh "
  printf "\n[SNAP] refresh\n" &>> $logFile
  sudo snap refresh &>> $logFile
  ret_code=$?
  retCode $ret_code
  printf "\n"

  repoAdded=0
}

#
# add ppa
# input : ppa name
#
function addPPA () {
  typeset ret_code
  printf "[PPA] adding : $* "
  printf "\n[PPA] adding $*\n" &>> $logFile
  sudo add-apt-repository -y $* &>> $logFile
  ret_code=$?
  retCode $ret_code
  printf "\n"
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
      sudo apt-key adv --keyserver $1 --recv-keys $2 - &>> $logFile
      ret_code=$?
      retCode $ret_code
      ;;
  esac
  printf "\n"
}

#
# create new entry in /etc/apt/source.list.d/
# input : filename, repo, src repo
#
function addRepo () {
  typeset ret_code
  printf "[REPO] adding : $2 in $1"
  printf "\n[REPO] adding $2 in $1\n" &>> $logFile
  echo $2 | sudo tee /etc/apt/sources.list.d/$1 &>> $logFile
  ret_code=$?
  retCode $ret_code
  if [ "$#" -eq 3 ]; then
    printf "[REPO] adding : $3 in $1"
    printf "\n[REPO] adding $3 in $1\n" &>> $logFile
    echo $3 | sudo tee -a /etc/apt/sources.list.d/$1 &>> $logFile
    ret_code=$?
    retCode $ret_code
  fi
  printf "\n"
}

#
# install package manually
# input : url of package, package name
#
function installPackageDpkg () {
  runCmd "cd /tmp"
  printf "\n"
  runCmd "wget -q -O $2 $1"
  printf "\n"
  runCmd "sudo dpkg -i $2 "
  printf "\n"
  runCmd "sudo apt-get install -fy"
  printf "\n"
}

#
# install app by remote shell script
# input : script url, script name, opt extra param
#TODO:#TODO:#TODO:#TODO:#TODO:#TODO:#TODO:#TODO:
function installAppRemoteScript () {
  runCmd "cd /tmp"
  printf "\n"
  runCmd "wget -q -O $2 $1"
  printf "\n"
  runCmd "chmod +x $2"
  printf "\n"

}

#
# install app from archive
# input : archive url, archive name, archive type, orig dir, dest dir
#TODO:#TODO:#TODO:#TODO:#TODO:#TODO:#TODO:#TODO:
function installAppFromArchive () {
  runCmd "cd /tmp"
  printf "\n"
  runCmd "wget -q -O $2 $1"
  printf "\n"
  case "$3" in
    "tgz")
      runCmd "tar xzf $2"
      printf "\n"
      ;;
    "xz")
      runCmd "tar xvJf $2"
      printf "\n"
      ;;
  esac
  runCmd "mkdir -p $5"
  printf "\n"
}

#
# install package from repositories
# input : package manager, package name
# package manager available : apt, pip, npm, gem, snap
# TODO: add apm, flatpak, umake?
# TODO: update npm before update/install pkg
#
function installPackage () {
  typeset pkg="$*"
  typeset ret_code

  case $1 in
  "apt")
    printf "[APT] Installing by $pkg "
    printf "\n[APT] installing by $pkg\n" &>> $logFile
    sudo apt-get install -fy $pkg &>> $logFile
    ret_code=$?
    retCode $ret_code
    printf "\n"
    ;;
  "pip")
    if which pip3 >/dev/null; then
      printf "[PIP] Installing by $pkg "
      printf "\n[PIP] installing by $pkg\n" &>> $logFile
      sudo -H pip3 install --upgrade $pkg &>> $logFile
      ret_code=$?
      retCode $ret_code
      printf "\n"
    else
      printf "[ERR] pip3 not found, installing...\n"
      printf "\n[ERR] pip3 not found, installing...\n" &>> $logFile
      installPackage apt "python3-pip"
      installPackage pip "pip"
    fi
    ;;
  "npm")
    if which npm >/dev/null; then
      printf "[NPM] Installing by $pkg "
      printf "\n[NPM] installing by $pkg\n" &>> $logFile
      sudo npm install -g $pkg &>> $logFile
      ret_code=$?
      retCode $ret_code
      printf "\n"
    else
      printf "[ERR] npm not found, installing...\n"
      printf "\n[ERR] npm not found, installing...\n" &>> $logFile
      installPackage apt "npm"
    fi
    ;;
  "gem")
    if which gem >/dev/null; then
      printf "[GEM] Installing by $pkg "
      printf "\n[GEM] installing by $pkg\n" &>> $logFile
      sudo gem install $pkg &>> $logFile
      ret_code=$?
      retCode $ret_code
      printf "\n"
    else
      printf "[ERR] gem not found, installing...\n"
      printf "\n[ERR] gem not found, installing...\n" &>> $logFile
      installPackage apt "ruby-dev"
    fi
    ;;
  "snap")
    if which snap >/dev/null; then
      printf "[SNAP] Installing by $pkg "
      printf "\n[SNAP] installing by $pkg\n" &>> $logFile
      sudo snap install $pkg &>> $logFile
      ret_code=$?
      retCode $ret_code
      printf "\n"
    else
      printf "[ERR] snap not found, installing...\n"
      printf "\n[ERR] snap not found, installing...\n" &>> $logFile
      installPackage apt "snapd"
    fi
    ;;
  esac
}

#
# check dependency and install it if necessary
# input : package manager, package name
#
function checkAndInstallDep () {
  if ! which $2 >/dev/null; then
    printf "[DEP] check dependency : $2 [ ""$BOLDROUGE""!!"$NORMAL" ]\n"
    printf "[ERR] dependency $2 not found\n" &>> $logFile
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
# install required ppa and settings
#
function addRequiredPPA () {
  msg "Adding PPA and repositories"

  runCmd "sudo dpkg --add-architecture i386"

  installPackage apt "apt-transport-https"

  runCmd "echo sience-config science-config/group select '$myHomedir ($myHomedir)' | sudo debconf-set-selections"

  addPPA "ppa:noobslab/themes" # themes from noobslab
  addPPA "ppa:noobslab/icons" # icons from noobslab
  addPPA "ppa:numix/ppa" # theme Numix
  addPPA "ppa:ravefinity-project/ppa" # Themes
  addPPA "ppa:teejee2008/ppa" # Aptik - Conky-Manage
  addPPA "ppa:yktooo/ppa" # indicator-sound-switcher
  addPPA "ppa:webupd8team/y-ppa-manager" # y-ppa-manager
  addPPA "ppa:webupd8team/atom" # IDE
  addPPA "ppa:videolan/stable-daily" # video player
  addPPA "ppa:ubuntu-desktop/ubuntu-make" # ubuntu-make
  addPPA "ppa:nowrep/qupzilla" # web browser
  addPPA "ppa:atareao/atareao" # pushbullet-indicator, imagedownloader, gqrcode, cpu-g
  addPPA "ppa:fossfreedom/rhythmbox-plugins";  # Rhythmbox plugins
  addPPA "ppa:fossfreedom/rhythmbox" # Rhythmbox
  addPPA "ppa:nilarimogard/webupd8" # Audacious, Grive2, Pidgin-indicator
  addPPA "ppa:oibaf/graphics-drivers" # free graphics-drivers + mesa
  addPPA "ppa:team-xbmc/ppa" # Kodi
  addPPA "ppa:webupd8team/java" # Oracle Java SE 7/8
  addPPA "ppa:hugin/hugin-builds" # image editor
  addPPA "ppa:mumble/release" # Mumble
  addPPA "ppa:atareao/utext" # Markdown editor
  addPPA "ppa:danielrichter2007/grub-customizer" # grub-customizer
  addPPA "ppa:lucioc/sayonara" # audio player
  addPPA "ppa:haraldhv/shotcut" # video editor
  addPPA "ppa:flacon/ppa" # audio extraction
  addPPA "ppa:jaap.karssenberg/zim" # local wiki
  addPPA "ppa:pmjdebruijn/darktable-release" # raw editor
  addPPA "ppa:js-reynaud/kicad-4" # CAD
  addPPA "ppa:stebbins/handbrake-releases" # video transcoder
  addPPA "ppa:webupd8team/brackets" # IDE
  addPPA "ppa:graphics-drivers/ppa" # non-free nvidia drivers
  addPPA "ppa:djcj/hybrid" # FFMpeg, MKVToolnix
  addPPA "ppa:diodon-team/stable" # clipboard manager
  addPPA "ppa:notepadqq-team/notepadqq" # notepad++ clone
  addPPA "ppa:mariospr/frogr" # flickr manager
  addPPA "ppa:ubuntuhandbook1/slowmovideo" # slow motion video editor
  addPPA "ppa:transmissionbt/ppa" # bittorrent client
  addPPA "ppa:geary-team/releases" # email client
  addPPA "ppa:ubuntuhandbook1/corebird" # corebird
  addPPA "ppa:tista/adapta" # adapta gtk theme
  addPPA "ppa:maarten-baert/simplescreenrecorder" # simplescreenrecorder
  addPPA "ppa:dhor/myway" # rawtherapee (newer version)
  addPPA "ppa:zeal-developers/ppa" # Zeal (newer version)
  addPPA "ppa:nextcloud-devs/client" # NextCloud client
  addPPA "ppa:deluge-team/ppa" # Deluge P2P client
  addPPA "ppa:kritalime/ppa" # Krita
  addPPA "ppa:otto-kesselgulasch/gimp" # Gmic2
  addPPA "ppa:ozmartian/apps" # Vidcutter
  addPPA "ppa:fossproject/ppa" # green-recorder
  addPPA "ppa:quiterss/quiterss" # quiterss
  addPPA "ppa:tmsu/ppa" # tmsu
  addPPA "ppa:ansible/ansible" # ansiaddmsg "Adding Opera repository"

  addKey "http://deb.opera.com/archive.key"
  addRepo opera.list \
          "deb http://deb.opera.com/opera-stable/ stable non-free"

  addKey "https://dl.google.com/linux/linux_signing_key.pub"
  addRepo google-chrome.list \
          "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"

  addKey "https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key"
  addRepo insync.list \
          "deb http://apt.insynchq.com/ubuntu xenial non-free contrib"

  addKey "hkp://p80.pool.sks-keyservers.net:80" \
          "58118E89F3A912897C070ADBF76221572C52609D"
  addRepo docker.list \
          "deb https://apt.dockerproject.org/repo ubuntu-xenial main"

  addKey "https://syncthing.net/release-key.txt"
  addRepo syncthing.list \
          "deb http://apt.syncthing.net/ syncthing release"

  addKey "http://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_16.04/Release.key"
  addRepo owncloud-client.list \
          "deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_16.04/ /"

  addKey "https://mkvtoolnix.download/gpg-pub-moritzbunkus.txt"
  addRepo mkv.list \
          "deb http://mkvtoolnix.download/ubuntu/xenial/ ./" \
          "deb-src http://mkvtoolnix.download/ubuntu/xenial/ ./ "

  addKey "https://jgeboski.github.io/obs.key"
  addRepo jgeboski.list \
          "deb http://download.opensuse.org/repositories/home:/jgeboski/xUbuntu_16.04/ ./"

  addKey "hkp://keyserver.ubuntu.com:80" \
         "BBEBDCB318AD50EC6865090613B00F1FD2C19886"
  addRepo spotify.list \
          "deb http://repository.spotify.com stable non-free"

  addKey "http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc"
  addKey "http://download.virtualbox.org/virtualbox/debian/oracle_vbox_2016.asc"
  addRepo virtualbox.list \
          "deb http://download.virtualbox.org/virtualbox/debian xenial contrib"

  addKey "http://archive.getdeb.net/getdeb-archive.key"
  addRepo getdeb.list \
          "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps games"

  addKey "http://repo.vivaldi.com/stable/linux_signing_key.pub"
  addKey "keyserver.ubuntu.com" \
         "1397BC53640DB551"
  addRepo vivaldi.list \
          "deb http://repo.vivaldi.com/stable/deb/ stable main "

  addKey "https://download.sublimetext.com/sublimehq-pub.gpg"
  addRepo sublime-text.list \
          "deb https://download.sublimetext.com/ apt/dev/"

  addKey "hkp://pgp.mit.edu:80" \
         "379CE192D401AB61"
  addRepo etcher.list \
          "deb https://dl.bintray.com/resin-io/debian stable etcher"

  updateSystem
}

#
# add specific repository for a given package
# input : unique ID, apt cache update yes/no
#
function addSpecificRepoFct () {
  for i in $AppsRepo; do
    appRepo=(${i//;/ })
    if [ "${appRepo[0]}" == "$1" ]; then
      printf "[ADD_REPO_FCT] for package : $1, "
      printf "add repo by function : ${appRepo[1]} \n"
      eval "${appRepo[1]}"
      repoAdded=$(($repoAdded+1))
    fi
  done
  if [ "$2" == "yes" ]; then
    updateSystem
  fi
  #unset i
  #unset appRepo
}

#
# find and execute Pre/Post install functions for a specific app
# input : unique ID
#
function processAppTrtFct () {
  for i in $AppsTrtFct; do
    appTrtFct=(${i//;/ })
    if [ "${appTrtFct[0]}" == "$1" ]; then
      printf "[APP_TRT_FCT] for package : $1, "
      printf "processing function : ${appTrtFct[1]} \n"
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
  printf "$BOLDJAUNE"
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
	printf "$NORMAL"
	printf "Usage : yggdrasil [options]\n"
  printf "  -f : full install (see doc for more details)\n"
  printf "  -c : install gtk themes and icons\n"
  printf "  -u : update system (apt,snap,...)\n"
	printf "  -v : show verison number\n"
  printf "  -h : show help & informations\n"
}