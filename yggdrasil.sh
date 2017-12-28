#!/bin/bash
#------------------------------------------------------------------------------#
# Yggdrasil NG                                                                 #
#    compatibility :  Mint 18, Ubuntu 16.04, Elementary and other derivatives  #
#    author : Francois B. (Makotosan/Shakasan)                                 #
#    licence : GPLv3                                                           #
#    website : https://makotonoblog.be/
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# Script's cons. and vars.                                                     #
#------------------------------------------------------------------------------#

#
# app version number
#
version="0.3.0"

#
# myHomedir is used in full paths to the homedir
#
myHomedir=$(whoami)

#
# script base dir
#
scriptDir=$(pwd)

#
# logfile
#
logFile="/home/"$myHomedir"/yggdrasil.log"

#
# date and time
#
cTime=$(date +%H:%M)
cDate=$(date +%d-%m-%Y)

#
# shell color codes
#
UNDERLINE=$(tput sgr 0 1)
BOLD=$(tput bold)
ROUGE=$(tput setaf 1)
VERT=$(tput setaf 2)
JAUNE=$(tput setaf 3)
BLEU=$(tput setaf 4)
MAUVE=$(tput setaf 5)
CYAN=$(tput setaf 6)
BLANC=$(tput setaf 7)
NORMAL=$(tput sgr0)
INV=$(tput smso)
BOLDROUGE=${BOLD}${ROUGE}
BOLDVERT=${BOLD}${VERT}
BOLDJAUNE=${BOLD}${JAUNE}
BOLDBLEU=${BOLD}${BLEU}
BOLDMAUVE=${BOLD}${MAUVE}
BOLDCYAN=${BOLD}${CYAN}
BOLDBLANC=${BOLD}${BLANC}

#-----------------------------------------------------------------------------#
# list of apps with required package manager and category                     #
#-----------------------------------------------------------------------------#

#
# List of packages available
# fields : package name, package manager, category, unique ID for external functions
#
Apps="cifs-utils;apt;base;cifs-utils
xterm;apt;base;xterm
curl;apt;base;curl
mc;apt;base;mc
bmon;apt;base;bmon
htop;apt;base;htop
screen;apt;base;screen
dconf-cli;apt;base;dconf
dconf-editor;apt;base;dconf-editor
lnav;apt;base;lnav
exfat-fuse;apt;base;exfat-fuse
exfat-utils;apt;base;exfat-utils
iftop;apt;base;iftop
iptraf;apt;base;iptraf
mpg123;apt;base;mpg123
debconf-utils;apt;base;debconf-utils
idle3-tools;apt;base;idle3-tools
snapd;apt;base;snapd
sysstat;apt;base;sysstat
spotify-client;apt;multimedia;spotify-client
slowmovideo;apt;multimedia;slowmovideo
sayonara;apt;multimedia;sayonara
qmmp;apt;multimedia;qmmp
qmmp-plugin-projectm;apt;multimedia;qmmp-plugin-projectm
shotcut;apt;multimedia;shotcut
audacious;apt;multimedia;audacious
dia;apt;multimedia;dia
mpv;apt;multimedia;mpv
picard;apt;multimedia;picard
inkscape;apt;multimedia;inkscape
aegisub;apt;multimedia;aegisub
aegisub-l10n;apt;multimedia;aegisub-l10n
mypaint;apt;multimedia;mypaint
mypaint-data-extras;apt;multimedia;mypaint-data-extras
audacity;apt;multimedia;audacity
blender;apt;multimedia;blender
kodi;apt;multimedia;kodi
digikam;apt;multimedia;digikam
synfigstudio;apt;multimedia;synfigstudio
mkvtoolnix-gui;apt;multimedia;mkvtoolnix-gui
rawtherapee;apt;multimedia;rawtherapee
hugin;apt;multimedia;hugin
asunder;apt;multimedia;asunder
milkytracker;apt;multimedia;milkytracker
pitivi;apt;multimedia;pitivi
openshot;apt;multimedia;openshot
smplayer;apt;multimedia;smplayer
smplayer-themes;apt;multimedia;smplayer-themes
smplayer-l10n;apt;multimedia;smplayer-l10n
selene;apt;multimedia;selene
gnome-mplayer;apt;multimedia;gnome-mplayer
handbrake;apt;multimedia;handbrake
avidemux2.6-qt;apt;multimedia;avidemux2.6-qt
avidemux2.6-plugins-qt;apt;multimedia;avidemux2.6-plugins-qt
mjpegtools;apt;multimedia;mjpegtools
twolame;apt;multimedia;twolame
lame;apt;multimedia;lame
banshee;apt;multimedia;banshee
banshee-extension-soundmenu;apt;multimedia;banshee-extension-soundmenu
gpicview;apt;multimedia;gpicview
vlc;apt;multimedia;vlc
shotwell;apt;multimedia;shotwell
darktable;apt;multimedia;darktable
ffmpeg;apt;multimedia;ffmpeg
flacon;apt;multimedia;flacon
scribus;apt;multimedia;scribus
gnome-font-viewer;apt;multimedia;gnome-font-viewer
moc;apt;multimedia;moc
webp;apt;multimedia;webp
simplescreenrecorder;apt;multimedia;simplescreenrecorder
simplescreenrecorder-lib;apt;multimedia;simplescreenrecorder-lib
simplescreenrecorder-lib:i386;apt;multimedia;simplescreenrecorder-lib:i386
cuetools;apt;multimedia;cuetools
shntool;apt;multimedia;shntool
flac;apt;multimedia;flac
entangle;apt;multimedia;entangle
krita;apt;multimedia;krita
soundconverter;apt;multimedia;soundconverter
gimp;apt;multimedia;gimp
vidcutter;apt;multimedia;vidcutter
green-recorder;apt;multimedia;green-recorder
radiotray;apt;multimedia;radiotray
quodlibet;apt;multimedia;quodlibet
python-cddb;apt;multimedia;python-cddb
python-musicbrainz2;apt;multimedia;python-musicbrainz2
owncloud-client;apt;internet;owncloud-client
syncthing-gtk;apt;internet;syncthing-gtk
syncthing;apt;internet;syncthing
insync;apt;internet;insync
quiterss;apt;internet;quiterss
frogr;apt;internet;frogr
opera-stable;apt;internet;opera-stable
google-chrome-stable;apt;internet;google-chrome-stable
xchat-gnome;apt;internet;xchat-gnome
xchat-gnome-indicator;apt;internet;xchat-gnome-indicator
chromium-browser;apt;internet;chromium-browser
chromium-browser-l10n;apt;internet;chromium-browser-l10n
dropbox;apt;internet;dropbox
qupzilla;apt;internet;qupzilla
filezilla;apt;internet;filezilla
hexchat;apt;internet;hexchat
mumble;apt;internet;mumble
imagedownloader;apt;internet;imagedownloader
california;apt;internet;california
midori;apt;internet;midori
geary;apt;internet;geary
corebird;apt;internet;corebird
nextcloud-client;apt;internet;nextcloud-client
nextcloud-client-caja;apt;internet;nextcloud-client-caja
deluge-gtk;apt;internet;deluge-gtk
deluge-torrent;apt;internet;deluge-torrent
vivaldi-stable;apt;internet;vivaldi-stable
qtqr;apt;utilities;qtqr
cpu-g;apt;utilities;cpu-g
screenfetch;apt;utilities;screenfetch
xcalib;apt;utilities;xcalib
conky-manager;apt;utilities;conky-manager
conky-all;apt;utilities;conky-all
plank;apt;utilities;plank
indicator-sound-switcher;apt;utilities;indicator-sound-switcher
y-ppa-manager;apt;utilities;y-ppa-manager
synapse;apt;utilities;synapse
acetoneiso;apt;utilities;acetoneiso
guake;apt;utilities;guake
tilda;apt;utilities;tilda
psensor;apt;utilities;psensor
kazam;apt;utilities;kazam
bleachbit;apt;utilities;bleachbit
gparted;apt;utilities;gparted
gsmartcontrol;apt;utilities;gsmartcontrol
terminator;apt;utilities;terminator
aptik;apt;utilities;aptik
gufw;apt;utilities;gufw
numlockx;apt;utilities;numlockx
grub-customizer;apt;utilities;grub-customizer
chmsee;apt;utilities;chmsee
unetbootin;apt;utilities;unebootin
zim;apt;utilities;zim
diodon;apt;utilities;diodon
pyrenamer;apt;utilities;pyrenamer
qt5ct;apt;utilities;qt5ct
qt4-qtconfig;apt;utilities;qt4-qtconfig
byobu;apt;utilities;byobu
mupdf;apt;utilities;mupdf
mupdf-tools;apt;utilities;mupdf-tools
ukuu;apt;utilities;ukuu
fcrackzip;apt;utilities;fcrackzip
rarcrack;apt;utilities;rarcrack
pdfcrack;apt;utilities;pdfcrack
figlet;apt;utilities;figlet
alltray;apt;utilities;alltray
mate-sensors-applet-nvidia;apt;utilities;mate-sensors-applets-nvidia
woeusb;apt;utilities;woeusb
screenkey;apt;utilities;screenkey
tmsu;apt;utilities;tmsu
etcher-electron;apt;utilities;etcher-electron
pdfgrep;apt;utilities;pdfgrep
coinmon;npm;utilities;coinmon
tldr;pip;utilities;tldr
s-tui;pip;utilities;s-tui
pip;pip;python;setuptools
python3-dev;apt;python;python3-dev
python3-pip;apt;python;python3-pip
python3-pyqt5;apt;python;python3-pyqt5
pyqt5-dev-tools;apt;python;pyqt5-dev-tools
setuptools;pip;python;setuptools
PyOpenGL;pip;python;PyOpenGL
tweepy;pip;python;tweepy
weppy;pip;python;weppy
py-term;pip;python;py-term
steam;apt;games;steam
jstest-gtk;apt;games;jstest-gtk
brasero;apt;burningtools;brasero
k3b;apt;burningtools;k3b
k3b-extrathemes;apt;burningtools;k3b-extrathemes
xfburn;apt;burningtools;xfburn
whois;apt;nettools;whois
iptraf;apt;nettools;iptraf
iperf;apt;nettools;iperf
wireshark;apt;nettools;wireshark
tshark;apt;nettools;tshark
zenmap;apt;nettools;zenmap
dsniff;apt;nettools;dsniff
aircrack-ng;apt;nettools;aricrack-ng
SpoofMAC;pip;nettools;SpoofMAC
speedtest-cli;pip;nettools;speedtest-cli
whatportis;pip;nettools;whatportis
droopescan;pip;nettools;droopescan
caja-share;apt;cajaplugins;caja-share
caja-wallpaper;apt;cajaplugins;caja-wallpaper
caja-sendto;apt;cajaplugins;caka-sendto
caja-image-converter;apt;cajaplugins;caja-image-converter
insync-caja;apt;cajaplugins;insync-caja
nautilus;apt;nautilus;nautilus
file-roller;apt;nautilus;file-roller
nautilus-emblems;apt;nautilus;nautilus-emblems
nautilus-image-manipulator;apt;nautilus;nautilus-image-manipulator
nautilus-image-converter;apt;nautilus;nautilus-image-converter
nautilus-compare;apt;nautilus;nautilus-compare
nautilus-actions;apt;nautilus;nautilus-actions
nautilus-sendto;apt;nautilus;nautilus-sendto
nautilus-share;apt;nautilus;nautilus-share
nautilus-wipe;apt;nautilus;nautilus-wipe
nautilus-script-audio-convert;apt;nautilus;nautilus-script-audio-convert
nautilus-filename-repairer;apt;nautilus;filename-repairer
nautilus-gtkhash;apt;nautilus;nautilus-gtkhash
nautilus-ideviceinfo;apt;nautilus;nautilus-ideviceinfo
ooo-thumbnailer;apt;nautilus;ooo-thumbnailer
nautilus-dropbox;apt;nautilus;nautilus-dropbox
nautilus-script-manager;apt;nautilus;nautilus-script-manager
nautilus-columns;apt;nautilus;nautilus-columns
nautilus-flickr-uploader;apt;nautilus;nautilus-flickr-uploader
insync-nautilus;apt;nautilus;insync-nautilus
gtkam-gimp;apt;gimp;gtkam-gimp
gimp-gluas;apt;gimp;gimp-gluas
pandora;apt;gimp;pandora
gimp-data-extras;apt;gimp;gimp-data-extras
gimp-lensfun;apt;gimp;gimp-lensfun
gimp-gmic;apt;gimp;gimp-gmic
gimp-ufraw;apt;gimp;gimp-ufraw
gimp-texturize;apt;gimp;gimp-texturize
gimp-plugin-registry;apt;gimp;gimp-plugin-registry
rhythmbox-plugin-alternative-toolbar;apt;rhythmbox;rhythmbox-plugin-alternative-toolbar
rhythmbox-plugin-artdisplay;apt;rhythmbox;rhythmbox-plugin-artdisplay
rhythmbox-plugin-cdrecorder;apt;rhythmbox;rhythmbox-plugin-cdrecorder
rhythmbox-plugin-close-on-hide;apt;rhythmbox;rhythmbox-plugin-close-on-hide
rhythmbox-plugin-countdown-playlist;apt;rhythmbox;rhythmbox-plugin-countdown-playlist
rhythmbox-plugin-coverart-browser;apt;rhythmbox;rhythmbox-plugin-coverart-browser
rhythmbox-plugin-coverart-search;apt;rhythmbox;rhythmbox-pluginn-coverart-search
rhythmbox-plugin-desktopart;apt;rhythmbox;rhythmbox-plugin-desktopart
rhythmbox-plugin-equalizer;apt;rhythmbox;rhythmbox-plugin-equalizer
rhythmbox-plugin-fileorganizer;apt;rhythmbox;rhythmbox-plugin-fileorganizer
rhythmbox-plugin-fullscreen;apt;rhythmbox;rhythmbox-plugin-fullscreen
rhythmbox-plugin-hide;apt;rhythmbox;rhythmbox-plugin-hide
rhythmbox-plugin-jumptowindow;apt;rhythmbox;rhythmbox-plugin-jumptowindow
rhythmbox-plugin-llyrics;apt;rhythmbox;rhythmbox-plugin-llyrics
rhythmbox-plugin-looper;apt;rhythmbox;rhythmbox-plugin-looper
rhythmbox-plugin-opencontainingfolder;apt;rhythmbox;rhythmbox-plugin-opencontainingfolder
rhythmbox-plugin-parametriceq;apt;rhythmbox;rhythmbox-plugin-parametriceq
rhythmbox-plugin-playlist-import-export;apt;rhythmbox;rhythmbox-plugin-playlist
rhythmbox-plugin-podcast-pos;apt;rhythmbox;rhythmbox-plugin-podcast-pos
rhythmbox-plugin-randomalbumplayer;apt;rhythmbox;rhythmbox-plugin-randomalbumplayer
rhythmbox-plugin-rating-filters;apt;rhythmbox;rhythmbox-plugin-rating-filters
rhythmbox-plugin-remembertherhythm;apt;rhythmbox;rhythmbox-plugin-remembertherhythm
rhythmbox-plugin-repeat-one-song;apt;rhythmbox;rhythmbox-plugin-repeat-one-song
rhythmbox-plugin-rhythmweb;apt;rhythmbox;rhythmbox-plugin-rhythmweb
rhythmbox-plugin-screensaver;apt;rhythmbox;rhythmbox-plugin-screensaver
rhythmbox-plugin-smallwindow;apt;rhythmbox;rhythmbox-plugin-smallwindow
rhythmbox-plugin-spectrum;apt;rhythmbox;rhythmbox-plugin-spectrum
rhythmbox-plugin-suspend;apt;rhythmbox;rhythmbox-plugin-suspend
rhythmbox-plugin-tray-icon;apt;rhythmbox;rhythmbox-plugin-tray-icon
rhythmbox-plugin-visualizer;apt;rhythmbox;rhythmbox-plugin-visualizer
rhythmbox-plugin-wikipedia;apt;rhythmbox;rhythmbox-plugin-wikipedia
rhythmbox-plugins;apt;rhythmbox;rhythmbox-plugins
telegram-purple;apt;pidgin;telegram-purple
pidgin-skype;apt;pidgin;pidgin-skype
purple-facebook;apt;pidgin;purple-facebook
purple-hangouts;apt;pidgin;purple-hangouts
pidgin-hangouts;apt;pidgin;pidgin-hangouts
pidgin-skypeweb;apt;pidgin;pidgin-skypeweb
purple-skypeweb;apt;pidgin;purple-skypeweb
unbound;apt;unbound;unbound
ambiance-crunchy;apt;gtkthemes;ambiance-crunchy
arc-theme;apt;gtkthemes;arc-theme
ambiance-colors;apt;gtkthemes;ambiance-colors
radiance-colors;apt;gtkthemes;radiance-colors
ambiance-flat-colors;apt;gtkthemes;ambiance-flat-colors
vivacious-colors-gtk-dark;apt;gtkthemes;vivacious-colors-gtk-dark
vivacious-colors-gtk-light;apt;gtkthemes;vivacious-colors-gtk-light
yosembiance-gtk-theme;apt;gtkthemes;yosembiance-gtk-theme
ambiance-blackout-colors;apt;gtkthemes;ambiance-blackout-colors
ambiance-blackout-flat-colors;apt;gtkthemes;ambiance-blackout-flat-colors
radiance-flat-colors;apt;gtkthemes;radiance-flat-colors
vibrancy-colors;apt;gtkthemes;vibrancy-colors
vivacious-colors;apt;gtkthemes;vivacious-colors
numix-gtk-theme;apt;gtkthemes;numix-gtk-theme
adapta-gtk-theme;apt;gtkthemes;adapta-gtk-theme
arc-icons;apt;icons;arc-icons
ultra-flat-icons;apt;icons;ultra-flat-icons
myelementary;apt;icons;myelementary
ghost-flat-icons;apt;icons;ghost-flat-icons
faenza-icon-theme;apt;icons;faenza-icon-theme
faience-icon-theme;apt;icons;faience-icon-theme
vibrantly-simple-icon-theme;apt;icons;vibrantly-simple-icon-theme
rave-x-colors-icons;apt;icons;rave-x-colors-icons
ravefinity-x-icons;apt;icons;ravefinity-x-icons
numix-icon-theme;apt;icons;numix-icon-theme
numix-icon-theme-circle;apt;icons;numix-icon-theme-circle
solaar;apt;solaar;solaar
pcscd;apt;cardreader;pcscd
pcsc-tools;apt;cardreader;pcsc-tools
libacr38u;apt;cardreader;libacr38u
guvcview;apt;webcam;guvcview
cheese;apt;webcam;cheese
nvidia-370;apt;nvidia-370;nvidia-370
nvidia-settings;apt;nvidia-370;nvidia-settings
nvidia-opencl-icd-370;apt;nvidia-370;nvidia-opencl-icd-370
nvidia-375;apt;nvidia-375;nvidia-375
nvidia-settings;apt;nvidia-375;nvidia-settings
nvidia-opencl-icd-375;apt;nvidia-375;nvidia-opencl-icd-375
nvidia-378;apt;nvidia-378;nvidia-378
nvidia-settings;apt;nvidia-378;nvidia-settings
nvidia-opencl-icd-378;apt;nvidia-378;nvidia-opencl-icd-378
libcuda1-378;apt;nvidia-378;libcuda1-378
nvidia-381;apt;nvidia-381;nvidia-381
nvidia-settings;apt;nvidia-381;nvidia-settings
nvidia-opencl-icd-381;apt;nvidia-381;nvidia-opencl-icd-381
libcuda1-381;apt;nvidia-381;libcuda1-381
nvidia-384;apt;nvidia-384;nvidia-384
nvidia-settings;apt;nvidia-384;nvidia-settings
nvidia-opencl-icd-384;apt;nvidia-384;nvidia-opencl-icd-384
libcuda1-384;apt;nvidia-384;libcuda1-384
tlp;apt;tlp;tlp
notepadqq;apt;dev;notepadqq
agave;apt;dev;agave
utext;apt;dev;utext
gpick;apt;dev;gpick
virtualbox-5.1;apt;dev;virtualbox-5.1
build-essential;apt;dev;build-essential
ubuntu-make;apt;dev;ubuntu-make
ghex;apt;dev;ghex
glade;apt;dev;glade
eric;apt;dev;eric
bluefish;apt;dev;bluefish
meld;apt;dev;meld
bluegriffon;apt;dev;bluegriffon
zeal;apt;dev;zeal
shellcheck;apt;dev;shellcheck
umbrello;apt;dev;umbrello
ack-grep;apt;dev;ack-grep
ansible;apt;dev;ansible
remark-lint;npm;dev;remark-lint
jedi;npm;dev;jedi
beautysh;pip;dev;beautys
retext;pip;dev;retext
mycli;pip;dev;mycli
npm;apt;javascript;npm
javascript-common;apt;javascript;javascript-common
yarn;npm;javascript;yarn
jshint;npm;javascript;jshint
oracle-java9-installer;apt;java9;oracle-java9-installer
oracle-java9-set-default;apt;java9;oracle-java9-set-default
php7.0-cli;apt;php;php7.0-cli
php-pear;apt;php;php-pear
composer;apt;php;composer
luajit;apt;lua;luajit
ruby-dev;apt;ruby;ruby-dev
anjuta;apt;anjuta;anjuta
anjuta-extras;apt;anjuta;anjuta-extras
brackets;apt;brackets;brackets
codeblocks;apt;codeblocks;codeblocks
codeblocks-contrib;apt;codeblocks;codeblocks-contrib
geany;apt;geany;geany
geany-plugins;apt;geany;geany-plugins
geany-plugin-markdown;apt;geany;geany-plugin-markdown
pycharm;apt;pycharm;pycharm
sublime-text;apt;sublime-text;sublime-text
kicad;apt;cad;kicad
kicad-locale-fr;apt;cad;kicad-locale-fr
librecad;apt;cad;librecad
freecad;apt;cad;freecad
atom;apt;atom;atom
sync-settings;apm;atom;sync-settings
sqlparse;pip;atom;sqlparse
flake8;pip;atom;flake8
autopep8;pip;atom;autopep8
htmlbeautifier;gem;atom;htmlbeautifier
kodi;apt;beta;kodi-beta
kodi;apt;nightly;kodi-nightly
nitrogen;apt;nitrogen;nitrogen
firefox-trunk;apt;nightly;firefox-trunk
firefox-trunk-locale-fr;apt;nightly;firefox-trunk-locale-fr
libreoffice;apt;office;libreoffice54
winehq-devel;apt;wine;winehq-devel
winetricks;apt;wine;winetricks
playonlinux;apt;wine;playonlinux
mongodb-org;apt;mongodb;mongodb-org
qt4-dev-tools;apt;qt;qt4-dev-tools
qt4-linguist-tools;apt;qt;qt4-linguist-tools
qt5-doc;apt;qt;qt5-doc
qttools5-doc;apt;qt;qttools5-doc
qttools5-dev-tools;apt;qt;qttools5-dev-tools
qttools5-examples;apt;qt;qttools5-examples
qttools5-doc-html;apt;qt;qttools5-doc-html"

#-----------------------------------------------------------------------------#
# Specific Repo list and functions                                            #
#-----------------------------------------------------------------------------#

#
# list of specific repositories
# fields : unique ID, function to add repo
#
AppsRepo="kodi-beta;addSpecificRepo_KodiBeta
kodi-nightly;addSpecificRepo_KodiNightly
libreoffice54:addSpecificRepo_Libreoffice54
winehq-devel:addSpecificRepo_Wine
mongodb-org;addSpecificRepo_MongoDB3CE"

#
# MongoDB 3 CE
#
function addSpecificRepo_MongoDB3CE () {
  addKey "hkp://keyserver.ubuntu.com:80" "2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5"
  addRepo "mongodb-org-3.6.list" "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/testing multiverse"
}

#
# Wine Build
#
function addSpecificRepo_Wine () {
  addKey "https://dl.winehq.org/wine-builds/Release.key"
  addPPA "https://dl.winehq.org/wine-builds/ubuntu/"
}

#
# LibreOffice 5.4
#
function addSpecificRepo_Libreoffice54 () {
  addPPA "ppa:libreoffice/libreoffice-5-4"
}

#
# Kodi Beta, repo
#
function addSpecificRepo_KodiBeta () {
  addPPA "ppa:team-xbmc/unstable"
}

#
# Kodi Nightly repo
#
function addSpecificRepo_KodiNightly () {
  addPPA "ppa:team-xbmc/xbmc-nightly"
}

#-----------------------------------------------------------------------------#
# Package post install functions list                                         #
#-----------------------------------------------------------------------------#

#
# list of post install functions
# fields : unique ID, function to process after install
#
AppsTrtFct="nitrogen;nitrogenTrtFct
mongodb-org;mongodbTrtFct
qttools5-dev-tools;qtTrtFct"

#
# QT5 Dev Tools
#
function qtTrtFct () {
  runCmd "sudo ln -s /usr/share/qtchooser/qt5-x86_64-linux-gnu.conf /usr/lib/x86_64-linux-gnu/qtchooser/default.conf"

  createAppShortcut "/usr/bin/designer" \
                    "/home/"$myHomedir"/.icons/qtdesigner.png" \
                    "GNOME;GTK;Development;IDE" \
                    "QT Designer 5" \
                    "local" \
  update-menus
}

#
# MongoDB 3 CE
#
function mongodbTrtFct () {
  runCmd "sudo systemctl unmask mongodb.service"
  runCmd "sudo systemctl enable mongodb"
  runCmd "sudo systemctl start mongodb"
}

#
# nitrogen post install function
#
function nitrogenTrtFct () {
#  if [[ $DESKTOP_SESSION == *"mate"* ]]; then
  if isMate; then
    runCmd "gsettings set org.mate.background draw-background false"
    runCmd "gsettings set org.mate.background show-desktop-icons false"

    createAppShortcut "bash -c \"sleep 10; nitrogen --restore\"" \
                      "/home/"$myHomedir".icons/franz.png" \
                      "Network;InstantMessaging" \
                      "Nitrogen" \
                      "local" \
                      "start"
    update-menus
  else
    printf "[ERR] only Mate Desktop is currently supported\n"
  fi
}

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
# install package from repositories
# input : package manager, package name
# package manager available : apt, pip, npm, gem
#
function installPackage () {
  typeset pkg="$*"
  typeset ret_code

  case $1 in
  "apt")
    printf "[APT] Installing by $* "
    printf "\n[APT] installing by $*\n" &>> $logFile
    sudo apt-get install -fy $* &>> $logFile
    ret_code=$?
    retCode $ret_code
    printf "\n"
    ;;
  "pip")
    if which pip3 >/dev/null; then
      printf "[PIP] Installing by $* "
      printf "\n[PIP] installing by $*\n" &>> $logFile
      sudo -H pip3 install --upgrade $* &>> $logFile
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
      printf "[NPM] Installing by $* "
      printf "\n[NPM] installing by $*\n" &>> $logFile
      sudo npm install -g $* &>> $logFile
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
      printf "[GEM] Installing by $* "
      printf "\n[GEM] installing by $*\n" &>> $logFile
      sudo gem install $* &>> $logFile
      ret_code=$?
      retCode $ret_code
      printf "\n"
    else
      printf "[ERR] gem not found, installing...\n"
      printf "\n[ERR] gem not found, installing...\n" &>> $logFile
      installPackage apt "ruby-dev"
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
    esac
  fi
}

#
# dependencies used in the script checked and installed if necessary
#
function depCheck () {
  printf "$BOLDJAUNE""Script dependencies checking\n\n""$NORMAL"
  checkAndInstallDep apt mpg123
  checkAndInstallDep apt libnotify-bin
  checkAndInstallDep apt lsb-release
  checkAndInstallDep apt cifs-utils
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
  addRepo opera.list "deb http://deb.opera.com/opera-stable/ stable non-free"

  addKey "https://dl.google.com/linux/linux_signing_key.pub"
  addRepo google-chrome.list "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"

  addKey "https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key"
  addRepo insync.list "deb http://apt.insynchq.com/ubuntu xenial non-free contrib"

  addKey "hkp://p80.pool.sks-keyservers.net:80" "58118E89F3A912897C070ADBF76221572C52609D"
  addRepo docker.list "deb https://apt.dockerproject.org/repo ubuntu-xenial main"

  addKey "https://syncthing.net/release-key.txt"
  addRepo syncthing.list "deb http://apt.syncthing.net/ syncthing release"

  addKey "http://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_16.04/Release.key"
  addRepo owncloud-client.list "deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_16.04/ /"

  addKey "https://mkvtoolnix.download/gpg-pub-moritzbunkus.txt"
  addRepo mkv.list "deb http://mkvtoolnix.download/ubuntu/xenial/ ./" "deb-src http://mkvtoolnix.download/ubuntu/xenial/ ./ "

  addKey "https://jgeboski.github.io/obs.key"
  addRepo jgeboski.list "deb http://download.opensuse.org/repositories/home:/jgeboski/xUbuntu_16.04/ ./"

  addKey "hkp://keyserver.ubuntu.com:80" "BBEBDCB318AD50EC6865090613B00F1FD2C19886"
  addRepo spotify.list "deb http://repository.spotify.com stable non-free"

  addKey "http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc"
  addKey "http://download.virtualbox.org/virtualbox/debian/oracle_vbox_2016.asc"
  addRepo virtualbox.list "deb http://download.virtualbox.org/virtualbox/debian xenial contrib"

  addKey "http://archive.getdeb.net/getdeb-archive.key"
  addRepo getdeb.list "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps games"

  addKey "http://repo.vivaldi.com/stable/linux_signing_key.pub"
  addKey "keyserver.ubuntu.com" "1397BC53640DB551"
  addRepo vivaldi.list "deb http://repo.vivaldi.com/stable/deb/ stable main "

  addKey "https://download.sublimetext.com/sublimehq-pub.gpg"
  addRepo sublime-text.list "deb https://download.sublimetext.com/ apt/dev/"

  addKey "hkp://pgp.mit.edu:80" "379CE192D401AB61"
  addRepo etcher.list "deb https://dl.bintray.com/resin-io/debian stable etcher"

  updateSystem
}

#
# add specific repository for a given package
# input : unique ID
#
function addSpecificRepoFct () {
  for i in $AppsRepo; do
    appRepo=(${i//;/ })
    if [ "${appRepo[0]}" == "$1" ]; then
      printf "[ADD_REPO_FCT] for package : $1, "
      printf "add repo by function : ${appRepo[1]} \n"
      eval "${appRepo[1]}"
    fi
  done
  updateSystem
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
      #list+=("${app[0]}" "${app[0]}" "ON")
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

#-----------------------------------------------------------------------------#
# install, config, ... functions                                              #
#-----------------------------------------------------------------------------#

#
# install Base Apps (headless)
#
function installBase () {
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

  msg "Téléchargement de XnView"
  wget http://download.xnview.com/XnViewMP-linux-x64.deb

  msg "Installation de XnView"
  sudo dpkg -i XnViewMP-linux-x64.deb
  sudo apt-get install -fy
}

#TODO:
function installEbook () {
  msg "Installation eBook apps and tools"
  runCmd "sudo apt-get install -y fbreader"; smsgn "Installing fbreader"
  cd /tmp
  runCmd "sudo -v && wget -q --no-check-certificate -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c \"import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()\""
  smsgn "Installing calibre"
}

#
# install Internet Apps (headless)
#
function installInternet () {
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

#TODO:
function installInternetExt () {
  msg "Installing Internet apps and tools"

  cd /tmp

  msg "Téléchargement de Skype"
  wget https://go.skype.com/skypeforlinux-64.deb

  msg "Installation de Skype"
  sudo dpkg -i skypeforlinux-64.deb
  sudo apt-get install -fy

  msg "Téléchargement de Viber"
  wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb

  msg "Installation de Viber"
  sudo dpkg -i viber.deb
  sudo apt-get install -fy

  msg "Téléchargement de MegaSync"
  wget https://mega.nz/linux/MEGAsync/xUbuntu_16.04/amd64/megasync-xUbuntu_16.04_amd64.deb

  msg "Installation de MegaSync"
  sudo dpkg -i megasync-xUbuntu_16.04_amd64.deb
  sudo apt-get install -fy

  msg "Installation de Discord"
  wget -O discord.deb https://discordapp.com/api/download?platform=linux&format=deb
  sudo dpkg -i discord.deb
  sudo apt-get install -fy

  msg "Téléchargement de Telegram Desktop"
  wget -O tsetup.tar.xz https://tdesktop.com/linux

  msg "Installation de Telegram Desktop"
  tar xvJf tsetup.tar.xz
  mv Telegram /home/$myHomedir/Apps
  sh -c "/home/"$myHomedir"/Apps/Telegram/Telegram &" && sleep 10 && pkill Telegram

  msg "Téléchargement de Gyazo"
  wget https://packagecloud.io/install/repositories/gyazo/gyazo-for-linux/script.deb.sh

  msg "Installation de Gyazo"
  chmod +x script.deb.sh
  sudo os=ubuntu dist=xenial ./script.deb.sh
  sudo apt-get install -y gyazo

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

#TODO:
function installPlankThemes () {
  msg "Installing Plank themes"

  if which plank >/dev/null; then
    if (( $(ps -ef | grep -v grep | grep plank | wc -l) > 0 )); then
      sh -c "cd ~ && mkdir -p ~/.temp-plank-themer && cd ~/.temp-plank-themer && wget https://github.com/rhoconlinux/plank-themer/archive/master.zip && unzip master.zip && cd plank-themer-master/ && rm -fR ~/.config/plank/dock1/theme_index; rm -fR ~/.config/plank/dock1/themes-repo; cp -a theme_index/ ~/.config/plank/dock1 && cp -a themes-repo/ ~/.config/plank/dock1 && cd ~ && rm -R ~/.temp-plank-themer && sh ~/.config/plank/dock1/theme_index/plank-on-dock-themer.sh"
    else
      plank 2&>1 >/dev/null &
      sleep 10
      yes | sh -c "cd ~ && mkdir -p ~/.temp-plank-themer && cd ~/.temp-plank-themer && wget https://github.com/rhoconlinux/plank-themer/archive/master.zip && unzip master.zip && cd plank-themer-master/ && rm -fR ~/.config/plank/dock1/theme_index; rm -fR ~/.config/plank/dock1/themes-repo; cp -a theme_index/ ~/.config/plank/dock1 && cp -a themes-repo/ ~/.config/plank/dock1 && cd ~ && rm -R ~/.temp-plank-themer && sh ~/.config/plank/dock1/theme_index/plank-on-dock-themer.sh"
    fi
  else
    msg "Plank must be installed first"
  fi
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

#TODO:
function installEpsonV500Photo () {
  cd /tmp

  msg "Téléchargement de iScan"
  wget https://download2.ebz.epson.net/iscan/plugin/gt-x770/deb/x64/iscan-gt-x770-bundle-1.0.0.x64.deb.tar.gz

  msg "Installation de iScan via DPKG"
  tar xzf iscan-gt-x770-bundle-1.0.0.x64.deb.tar.gz
  cd /tmp/iscan-gt-x770-bundle-1.0.0.x64.deb
  ./install.sh

  installPackage apt xsane

  msg "Ajout à Xsane du backend epkowa du Scanner Epson Perfection V500"
  sudo sh -c "echo '# Epson Perfection V500\n\
  usb 0x04b8 0x0130' >> /etc/sane.d/epkowa.conf"
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
  printf "[INFO] Microcode updated from "$oldMicrocode" version to "$newMicrocode" version\n"
}

#TODO:
function fixWirelessIntel6320 () {
  msg "Backup du fichier iwlwifi.conf"
  sudo cp /etc/modprobe.d/iwlwifi.conf /etc/modprobe.d/iwlwifi.conf.bak

  msg "Paramètres dans iwlwifi.conf"
  echo options iwlwifi bt_coex_active=0 swcrypto=1 11n_disable=8 | sudo tee /etc/modprobe.d/iwlwifi.conf

  msg "!!! REBOOT Nécessaire !!!"
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

  rmcCmd "sudo service udev restart"
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

#TODO:
function installNode8LTS () {
  msg "Installing NodeJS 8 LTS"
  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - &>> $logFile && retCode $? && smsgn "Adding Node repository"
  runCmd "sudo apt-get install -y nodejs"; smsgn "Installing nodejs"
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

  msg "PATH in .bashrc"
  touch /home/$myHomedir/.bashrc
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

  msg "Restarting UDEV service"
  sudo service udev restart

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

  # runCmd "sudo apt-get install -y atom"; smsgn "Installing atom"

  # if which apm >/dev/null; then
  #   msg "Apm installing Atom extensions"
  #   runCmd "apm install sync-settings"; smsgn "APM Installing sync-settings"
  # fi

  # if which pip3 >/dev/null; then
  #   msg "PIP installing : SQLParse"
  #   sudo -H pip3 install --upgrade sqlparse

  #   msg "PIP installing : flake8"
  #   sudo -H pip3 install --upgrade flake8

  #   msg "PIP installing : autopep8"
  #   sudo -H pip3 install --upgrade autopep8
  # else
  #   installPython
  # fi

  # if which gem >/dev/null; then
  #   msg "Gem installing : htmlbeautifier"
  #   sudo gem install htmlbeautifier
  # else
  #   installRuby
  # fi
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

#TODO:
function installIdea () {
  if which umake >/dev/null; then
    msg "Umake installing : Idea"
    sudo umake ide idea
  fi
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

#TODO:
function installVisualStudioCode () {
  if which umake >/dev/null; then
    msg "Umake installing : Visual-studio-code"
    sudo umake ide visual-studio-code
  fi
}

#TODO:
function installAndroidStudio () {
  if which umake >/dev/null; then
    msg "Umake installing : Android-Studio"
    sudo umake android android-studio
  fi
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

#TODO:
function installTeamViewer12 () {
  cd /tmp

  msg "Downloading Teamviewer 12"
  wget -O teamviewer12.deb https://download.teamviewer.com/download/teamviewer_i386.deb

  msg "Installing Teamviewer 12"
  sudo dpkg -i teamviewer12.deb
  sudo apt-get install -fy
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
  runCmd "sudo ufw enable"

  if which syncthing >/dev/null; then
    msg "UFW Rules added for Syncthing"
    sudo ufw allow syncthing
  fi
}

#TODO:
function enableNumLockX () {
  msg "Adding NumLockX to MDM/LightDM Default Init"

  checkAndInstallDep apt numlockx

  if which mdm >/dev/null; then
    sudo cp /etc/mdm/Init/Default /etc/mdm/Init/Default.yggbak
    sudo sed -i -e '
    s!exit 0!#numlockx!
    ' /etc/mdm/Init/Default
    sudo sh -c "echo 'if [ -x /usr/bin/numlockx ]; then\n\
    exec /usr/bin/numlockx on\n\
    fi\n\
    \n\
    exit 0' >> /etc/mdm/Init/Default"
  elif which lightdm >/dev/null; then
    sudo cp /etc/lightdm/lightdm.conf.d/70-linuxmint.conf /etc/lightdm/lightdm.conf.d/70-linuxmint.conf.yggbak
    sudo bash -c "echo 'greeter-setup-script=/usr/bin/numlockx on' >> /etc/lightdm/lightdm.conf.d/70-linuxmint.conf"
  fi
}

#TODO:
function enableTmpRAM () {
  msg "Enable /tmp in RAM by modifying /etc/fstab"
  sudo sh -c "echo 'tmpfs      /tmp            tmpfs        defaults,size=2g           0    0' >> /etc/fstab"
  msg "Reboot required"
}

#TODO:
function addScreenfetchBashrc () {
  msg "Adding screenfetch to .bashrc"
  checkAndInstallDep apt screenfetch
  touch /home/$myHomedir/.bashrc
  echo "screenfetch -t" >> /home/"$myHomedir"/.bashrc
}

#TODO:
function enableHistoryTS () {
  msg "CLI History TimeStamp Activation"
  echo "export HISTTIMEFORMAT='%F %T  '" >> /home/"$myHomedir"/.bashrc
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
  checkAndInstallDep apt inxi
  inxi -F
}

#
# check bandwith and latency of the internet connection
#
function toolSpeedtestCli () {
  checkAndInstallDep pip speedtest-cli
  speedtest-cli
}

#
# check for packet loss
#
function toolPacketLoss () {
  ping -q -c 10 google.com
}

#TODO:
function toolOptimizeFirefox () {
  msg "Firefox SQLite databases optimization"
  pressKey "Please close Firefox BEFORE to proceed, which will be killed just after"
  if which firefox >/dev/null; then
    smsgn "Optimizing Firefox"
    pkill -9 firefox
    for f in ~/.mozilla/firefox/*/*.sqlite; do sqlite3 $f 'VACUUM; REINDEX;'; done
  fi
  if which firefox-trunk >/dev/null; then
    smsgn "Optimizing Firefox Nightly"
    pkill -9 firefox-trunk
    for f in ~/.mozilla/firefox-trunk/*/*.sqlite; do sqlite3 $f 'VACUUM; REINDEX;'; done
  fi
}

#
# remove useless packages (depedencies)
#
function toolAutoremove () {
  msg "Cleaning useless deb package(s)"
  runCmd "sudo apt-get -y autoremove"
}

#
# remove old versions of installed kernels
#
function toolClearOldKernels () {
  msg "Removing old kernels (keeping the 3 last kernels)"
  checkAndInstallDep apt byobu
  runCmd "sudo purge-old-kernels --keep 3"
}

#
# force soundcards detection
#
function toolSoundCardsDetection () {
  runCmd "sudo alsa force-reload"
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
Github : https://github.com/shakasan/Yggdrasil
Licence : GPLv3
Version : '$version'\n
This script has been written to makes my life easier when I have to (re)install my personal computers ;-)
This is my first major shell sccript and use of whiptail,...
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
        clear; enableUFW; pressKey
        ;;
      "NumLockX")
        clear; enableNumLockX; pressKey
        ;;
      "TmpRAM")
        clear; enableTmpRAM; pressKey
        ;;
      "screenfetch")
        clear; addScreenfetchBashrc; pressKey
        ;;
      "historyTS")
        clear; enableHistoryTS; pressKey
        ;;
      "unattendedUpgrades")
        clear; installUnattendedUpgrades; pressKey
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
    "javascriptbase" "JavaScript dev env" \
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
    "teamviewer12" "Teamviewer 12" \
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $devInstallMenuOptions in
      "devbase")
        installDevAppsMenu
        ;;
      "java9")
        installJava9
        ;;
      "javascriptbase")
        ;;
      "nodelts")
        ;;
      "mongodb3ce")
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
        ;;
      "python")
        ;;
      "androidenv")
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
        ;;
      "idea")
        ;;
      "pycharm")
        installPyCharmMenu
        ;;
      "vsc")
        ;;
      "androidstudio")
        ;;
      "sublimetext")
        installSublimeTextMenu
        ;;
      "cad")
        installCADMenu
        ;;
      "teamviewer12")
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
    "Back" "Back"  3>&1 1>&2 2>&3)

    case $hardwareMenuOptions in
      "cardreader")
        installCardReaderMenu
        ;;
      "solaar")
        installAppsFromListMenu
        ;;
      "Back")
        break
        ;;
    esac

  done
}

#------------------------------------------------------------------------------#
# Entry point of the script                                                  #
#------------------------------------------------------------------------------#

clear

# add a mark to the log file at every script run
echo "--[ Yggdrasil log ]--[ "$cDate" ]--[ "$cTime" ]----------------------------------------------------------------------------" >> $logFile

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
printf "$BOLDVERT""User (userdir) :""$NORMAL"" $myHomedir\n"
printf "$BOLDVERT""OS : ""$NORMAL"
lsb_release -d | awk -F':' '{print $2}' | awk -F'\t' '{print $2}'
printf "$BOLDVERT""Kernel : ""$NORMAL"
uname -r
printf "$BOLDVERT""Architecture : ""$NORMAL"
uname -m

#osCheck
#deCheck
#depCheck

# Useless by itself, but is used to don't be annoyed later in the script
# NEVER run the script as root or with sudo !!!!
if ! [ "$UID" -ne "0" ]; then
  printf "\n"
  printf "$BOLDROUGE""This script can't be run as root/sudo, please retry as normal user""$NORMAL"
  printf "\n\n"
  exit
fi
sudo echo

pressKey

# Apps dir created if necessary
mkdir -p /home/$myHomedir/Apps

#------------------------------------------------------------------------------#
# Main menu                                                                    #
#------------------------------------------------------------------------------#

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

#------------------------------------------------------------------------------#

clear
exit
