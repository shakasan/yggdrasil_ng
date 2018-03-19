#------------------------------------------------------------------------------#
# Yggdrasil NG                                                                 #
#    compatibility :  Mint 18, Ubuntu 16.04, Elementary and other derivatives  #
#    author : Francois B. (Makotosan/Shakasan)                                 #
#    licence : GPLv3                                                           #
#    website : https://makotonoblog.be/
#------------------------------------------------------------------------------#

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
spotify;snap;multimedia;spotify
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
cheat;pip;utilities;cheat
mate-sensors-applet-nvidia;apt;utilities;mate-sensors-applets-nvidia
woeusb;apt;utilities;woeusb
screenkey;apt;utilities;screenkey
tmsu;apt;utilities;tmsu
etcher-electron;apt;utilities;etcher-electron
pdfgrep;apt;utilities;pdfgrep
coinmon;npm;utilities;coinmon
tldr;pip;utilities;tldr
gyazo;apt;utilities;gyazo
python3-dev;apt;python;python3-dev
python3-pip;apt;python;python3-pip
python3-pyqt5;apt;python;python3-pyqt5
pyqt5-dev-tools;apt;python;pyqt5-dev-tools
pip;pip;python;setuptools
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
nethogs;apt;nettools;nethogs
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
docker-ce;apt;dev;docker-ce
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
code;apt;code;code
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
libreoffice;apt;office;libreoffice6
winehq-devel;apt;wine;winehq-devel
winetricks;apt;wine;winetricks
playonlinux;apt;wine;playonlinux
mongodb-org;apt;mongodb;mongodb
qt4-dev-tools;apt;qt;qt4-dev-tools
qt4-linguist-tools;apt;qt;qt4-linguist-tools
qt5-doc;apt;qt;qt5-doc
qttools5-doc;apt;qt;qttools5-doc
qttools5-dev-tools;apt;qt;qttools5-dev-tools
qttools5-examples;apt;qt;qttools5-examples
qttools5-doc-html;apt;qt;qttools5-doc-html
fbreader;apt;ebook;fbreader
calibre;apt;ebook;calibre
android-studio;apt;android-studio;android-studio
intellij-idea-community;snap;idea;idea"

#-----------------------------------------------------------------------------#
# Specific Repo list and functions                                            #
#-----------------------------------------------------------------------------#

#
# list of specific repositories
# fields : unique ID, function to add repo
#
AppsRepo="kodi-beta;addRepo_KodiBeta
kodi-nightly;addRepo_KodiNightly
libreoffice6;addRepo_Libreoffice6
winehq-devel;addRepo_Wine
mongodb;addRepo_MongoDB3CE
gyazo;addRepo_Gyazo
code;addRepo_VSCode
android-studio;addRepo_AndroidStudio
docker-ce;addRepo_DockerCE
ansible;addRepo_Ansible
etcher-electron;addRepo_Etcher
sublime-text;addRepo_SublimeText
vivaldi-stable;addRepo_Vivaldi
virtualbox-5.1;addRepo_VirtualBox
owncloud-client;addRepo_OwnCloud
syncthing-gtk;addRepo_Syncthing
opera-stable;addRepo_Opera
insync;addRepo_Insync
google-chrome-stable;addRepo_ChromeStable
atom;addRepo_Atom
nextcloud-client;addRepo_NextCloud
wireshark;addRepo_WireShark
darktable;addRepo_DarkTable
brackets;addRepo_Brackets
kicad;addRepo_Kicad"

#
# Kicad 4
#
function addRepo_Kicad () {
  addPPA "ppa:js-reynaud/kicad-4"
}

#
# Brackets IDE
#
function addRepo_Brackets () {
  addPPA "ppa:webupd8team/brackets"
}

#
# Darktable RAW Editor
#
function addRepo_DarkTable () {
  addPPA "ppa:pmjdebruijn/darktable-release"
}

#
# WireShark
#
function addRepo_WireShark () {
addPPA "ppa:wireshark-dev/stable"
}

#
# NextCloud
#
function addRepo_NextCloud () {
  addPPA "ppa:nextcloud-devs/client"
}

#
# Atom IDE
#
function addRepo_Atom () {
  addPPA "ppa:webupd8team/atom"
}

#
# Google Chrome (stable)
#
function addRepo_ChromeStable () {
  addKey "https://dl.google.com/linux/linux_signing_key.pub"
  addRepo google-chrome.list \
          "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"
}

#
# Insync
#
function addRepo_Insync () {
  addKey "https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key"
  addRepo insync.list \
          "deb http://apt.insynchq.com/ubuntu xenial non-free contrib"
}

#
# Opera (stable)
#
function addRepo_Opera () {
  addKey "http://deb.opera.com/archive.key"
  addRepo opera.list \
          "deb http://deb.opera.com/opera-stable/ stable non-free"
}

#
# Syncthing
#
function addRepo_Syncthing () {
  addKey "https://syncthing.net/release-key.txt"
  addRepo syncthing.list \
          "deb http://apt.syncthing.net/ syncthing release"
}

#
# OwnCloud
#
function addRepo_OwnCloud () {
  addKey "http://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_16.04/Release.key"
  addRepo owncloud-client.list \
          "deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_16.04/ /"
}

#
# VirtualBox
#
function addRepo_VirtualBox () {
  addKey "http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc"
  addKey "http://download.virtualbox.org/virtualbox/debian/oracle_vbox_2016.asc"
  addRepo virtualbox.list \
          "deb http://download.virtualbox.org/virtualbox/debian xenial contrib"
}

#
# Vivaldi
#
function addRepo_Vivaldi () {
  addKey "http://repo.vivaldi.com/stable/linux_signing_key.pub"
  addRepo vivaldi.list \
          "deb http://repo.vivaldi.com/stable/deb/ stable main "
}

#
# SublimeText
#
function addRepo_SublimeText () {
  addKey "https://download.sublimetext.com/sublimehq-pub.gpg"
  addRepo sublime-text.list \
          "deb https://download.sublimetext.com/ apt/dev/"
}

#
# Etcher
#
function addRepo_Etcher () {
  addKey "hkp://pgp.mit.edu:80" \
         "379CE192D401AB61"
  addRepo "etcher.list" \
          "deb https://dl.bintray.com/resin-io/debian stable etcher"
}

#
# Ansible
#
function addRepo_Ansible () {
  addPPA "ppa:ansible/ansible"
}

#
# Docker CE
#
function addRepo_DockerCE () {
  addKey "https://download.docker.com/linux/ubuntu/gpg"
  addRepo "docker.list" \
          "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
}

#
# Gyazo
#
function addRepo_Gyazo () {
  addKey "https://packagecloud.io/gyazo/gyazo-for-linux/gpgkey"
  addRepo "gyazo_gyazo-for-linux.list" \
          "deb https://packagecloud.io/gyazo/gyazo-for-linux/ubuntu/ xenial main" \
          "deb-src https://packagecloud.io/gyazo/gyazo-for-linux/ubuntu/ xenial main"
}

#
# MongoDB 3 CE
#
function addRepo_MongoDB3CE () {
  addKey "https://www.mongodb.org/static/pgp/server-3.6.asc"
  addRepo "mongodb-org-3.6.list" \
          "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse"
}

#
# Wine Build
#
function addRepo_Wine () {
  addKey "https://dl.winehq.org/wine-builds/Release.key"
  addPPA "https://dl.winehq.org/wine-builds/ubuntu/"
}

#
# LibreOffice 6
#
function addRepo_Libreoffice6 () {
  addPPA "ppa:libreoffice/ppa"
}

#
# Kodi (Beta)
#
function addRepo_KodiBeta () {
  addPPA "ppa:team-xbmc/unstable"
}

#
# Kodi (Nightly)
#
function addRepo_KodiNightly () {
  addPPA "ppa:team-xbmc/xbmc-nightly"
}

#
# Visual Studio Code
#
function addRepo_VSCode () {
  addKey "https://packages.microsoft.com/keys/microsoft.asc"
  addRepo "vscode.list" \
          "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
}

#
# Android-Studio
#
function addRepo_AndroidStudio () {
  addPPA "ppa:maarten-fonville/android-studio"
}

#-----------------------------------------------------------------------------#
# Package post install functions list                                         #
#-----------------------------------------------------------------------------#

#
# list of post install functions
# fields : unique ID, function to process after install
#
AppsTrtFct="nitrogen;nitrogen_TrtFct
mongodb-org;mongodb_TrtFct
qttools5-dev-tools;qt_TrtFct"

#
# QT5 Dev Tools
#
function qt_TrtFct () {
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
function mongodb_TrtFct () {
  runCmd "sudo systemctl unmask mongodb.service"
  runCmd "sudo systemctl enable mongodb"
  runCmd "sudo systemctl start mongodb"
}

#
# nitrogen post install function
#
function nitrogen_TrtFct () {
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

#-----------------------------------------------------------------------------#

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
  addPPA "ppa:stebbins/handbrake-releases" # video transcoder
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
  addPPA "ppa:deluge-team/ppa" # Deluge P2P client
  addPPA "ppa:kritalime/ppa" # Krita
  addPPA "ppa:otto-kesselgulasch/gimp" # Gmic2
  addPPA "ppa:ozmartian/apps" # Vidcutter
  addPPA "ppa:fossproject/ppa" # green-recorder
  addPPA "ppa:quiterss/quiterss" # quiterss
  addPPA "ppa:tmsu/ppa" # tmsu

  addKey "https://mkvtoolnix.download/gpg-pub-moritzbunkus.txt"
  addRepo mkv.list \
          "deb http://mkvtoolnix.download/ubuntu/xenial/ ./" \
          "deb-src http://mkvtoolnix.download/ubuntu/xenial/ ./ "

  addKey "https://jgeboski.github.io/obs.key"
  addRepo jgeboski.list \
          "deb http://download.opensuse.org/repositories/home:/jgeboski/xUbuntu_16.04/ ./"

  addKey "http://archive.getdeb.net/getdeb-archive.key"
  addRepo getdeb.list \
          "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps games"

  updateSystem
}