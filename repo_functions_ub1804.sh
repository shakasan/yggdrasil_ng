#-----------------------------------------------------------------------------#
# Yggdrasil NG                                                                #
#    compatibility : see documentation or man pages                           #
#    author : Francois B. (Makotosan/Shakasan)                                #
#    licence : GPLv3                                                          #
#    website : https://makotonoblog.be/                                       #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
#                                                                             #
# Ubuntu 18.04 / Linux Mint 19                                                #
#                                                                             #
#-----------------------------------------------------------------------------#

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
dcfldd;apt;base;dcfldd
spotify;snap;multimedia;spotify
sayonara;apt;multimedia;sayonara
qmmp;apt;multimedia;qmmp
qmmp-plugin-projectm;apt;multimedia;qmmp-plugin-projectm
shotcut;snap;multimedia;shotcut
audacious;apt;multimedia;audacious
dia;apt;multimedia;dia
mpv;apt;multimedia;mpv
picard;apt;multimedia;picard
inkscape;apt;multimedia;inkscape
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
handbrake-cli;apt;multimedia;handbrake-cli
handbrake-gtk;apt;multimedia;handbrake-gtk
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
gmusicbrowser;apt;multimedia;gmusicbrowser
peek;apt;multimedia;peek
bino;apt;multimedia;bino
kdenlive;apt;multimedia;kdenlive
syncthing;apt;internet;syncthing
syncthing-gtk;apt;internet;syncthinggtk
insync;apt;internet;insync
megasync;apt;internet;megasync
megacmd;apt;internet;megasync
discord;snap;internet;discord
quiterss;apt;internet;quiterss
opera-stable;apt;internet;opera-stable
google-chrome-stable;apt;internet;google-chrome-stable
chromium-browser;apt;internet;chromium-browser
chromium-browser-l10n;apt;internet;chromium-browser-l10n
filezilla;apt;internet;filezilla
hexchat;apt;internet;hexchat
mumble;apt;internet;mumble
geary;apt;internet;geary
birdtray;apt;internet;birdtray
corebird;apt;internet;corebird
telegram;apt;internet;telegram
skypeforlinux;apt;internet;skypeforlinux
nextcloud-client;apt;internet;nextcloud-client
deluge-gtk;apt;internet;deluge-gtk
deluge-torrent;apt;internet;deluge-torrent
vivaldi-stable;apt;internet;vivaldi-stable
transmission-gtk;apt;internet;transmission-gtk
iridium-browser;apt;internet;iridiumbrowser
youtube-dl;pip;internet;youtube-dl
youtube-dlg;apt;internet;youtube-dlg
gnome-twitch;snap;internet;gnome-twitch
gnome-twitch-player-backend-mpv-opengl;apt;internet;gnome-twitch
gallery-dl;pip;internet;gallery-dl
qtqr;apt;utilities;qtqr
cpu-g;apt;utilities;cpu-g
screenfetch;apt;utilities;screenfetch
xcalib;apt;utilities;xcalib
conky-all;apt;utilities;conky-all
plank;apt;utilities;plank
docky;apt;utilities;docky
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
tilix;apt;utilities;tilix
aptik;apt;utilities;aptik
gufw;apt;utilities;gufw
numlockx;apt;utilities;numlockx
grub-customizer;apt;utilities;grub-customizer
zim;apt;utilities;zim
diodon;apt;utilities;diodon
qt5ct;apt;utilities;qt5ct
qt4-qtconfig;apt;utilities;qt4-qtconfig
byobu;apt;utilities;byobu
mupdf;apt;utilities;mupdf
mupdf-tools;apt;utilities;mupdf-tools
pdfarranger;apt;utilities;pdfarranger
fcrackzip;apt;utilities;fcrackzip
rarcrack;apt;utilities;rarcrack
pdfcrack;apt;utilities;pdfcrack
figlet;apt;utilities;figlet
alltray;apt;utilities;alltray
kdocker;apt;utilities;kdocker
cheat;pip;utilities;cheat
woeusb;apt;utilities;woeusb
screenkey;apt;utilities;screenkey
pdfgrep;apt;utilities;pdfgrep
coinmon;npm;utilities;coinmon
tldr;pip;utilities;tldr
gyazo;apt;utilities;gyazo
fdupes;apt;utilities;fdupes
p7zip-desktop;snap;utilities;p7zip-desktop
balena-etcher-electron;apt;utilities;balena-etcher-electron
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
idle3;apt;python;idle3
python-gi;apt;python;python-gi
python-gi-cairo;apt;python;python-gi-cairo
python3-gi;apt;python;python3-gi
python3-gi-cairo;apt;python;python3-gi-cairo
python3-venv;apt;python;python3-venv
python3-wheel;apt;python;python3-wheel
libgirepository1.0-dev;apt;python;libgirepository1.0-dev
libbz2-dev;apt;python;libbz2-dev
libreadline-dev;apt;python;libreadline-dev
libssl-dev;apt;python;libssl-dev
zlib1g-dev;apt;python;zlib1g-dev
libsqlite3-dev;apt;python;libsqlite3-dev
llvm;apt;python;llvm
libncurses5-dev;apt;python;libncurses5-dev
libncursesw5-dev;apt;python;libncursesw5-dev
xz-utils;apt;python;xz-utils
tk-dev;apt;python;tk-dev
libcairo2-dev;apt;python;libcairo2-dev
virtualenv;pip;python;virtualenv
pipenv;pip;python;pipenv
jstest-gtk;apt;games;jstest-gtk
dosbox;apt;games;dosbox
lutris;apt;games;lutris
steam;apt;steam;steam
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
nethogs;apt;nettools;nethogs
ssh_scan;gem;nettools;sshscan
whatismyip;npm;nettools;whatismyip
caja-share;apt;cajaplugins;caja-share
caja-wallpaper;apt;cajaplugins;caja-wallpaper
caja-sendto;apt;cajaplugins;caka-sendto
caja-image-converter;apt;cajaplugins;caja-image-converter
insync-caja;apt;cajaplugins;insync-caja
nextcloud-client-caja;apt;cajaplugins;nextcloud-client-caja
nautilus;apt;nautilus;nautilus
file-roller;apt;nautilus;file-roller
nautilus-emblems;apt;nautilus;nautilus-emblems
nautilus-image-converter;apt;nautilus;nautilus-image-converter
nautilus-compare;apt;nautilus;nautilus-compare
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
insync-nautilus;apt;nautilus;insync-nautilus
thunar;apt;thunar;thunar
thunar-archive-plugin;apt;thunar;thunar-archive-plugin
thunar-gtkhash;apt;thunar;thunar-gtkhash
thunar-volman;apt;thunar;thunar-volman
gtkam-gimp;apt;gimp;gtkam-gimp
gimp-gluas;apt;gimp;gimp-gluas
pandora;apt;gimp;pandora
gimp-data-extras;apt;gimp;gimp-data-extras
gimp-lensfun;apt;gimp;gimp-lensfun
gimp-gmic;apt;gimp;gimp-gmic
gimp-ufraw;apt;gimp;gimp-ufraw
gimp-texturize;apt;gimp;gimp-texturize
rhythmbox-plugin-alternative-toolbar;apt;rhythmbox;rhythmbox-plugin-alternative-toolbar
rhythmbox-plugin-artdisplay;apt;rhythmbox;rhythmbox-plugin-artdisplay
rhythmbox-plugin-cdrecorder;apt;rhythmbox;rhythmbox-plugin-cdrecorder
rhythmbox-plugin-close-on-hide;apt;rhythmbox;rhythmbox-plugin-close-on-hide
rhythmbox-plugin-countdown-playlist;apt;rhythmbox;rhythmbox-plugin-countdown-playlist
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
rhythmbox-plugin-wikipedia;apt;rhythmbox;rhythmbox-plugin-wikipedia
rhythmbox-plugins;apt;rhythmbox;rhythmbox-plugins
pidgin-skype;apt;pidgin;pidgin-skype
purple-facebook;apt;pidgin;purple-facebook
unbound;apt;unbound;unbound
arc-theme;apt;gtkthemes;arc-theme
numix-gtk-theme;apt;gtkthemes;numix-gtk-theme
plata-theme;apt;gtkthemes;plata-theme
faenza-icon-theme;apt;icons;faenza-icon-theme
numix-icon-theme;apt;icons;numix-icon-theme
numix-icon-theme-circle;apt;icons;numix-icon-theme-circle
solaar;apt;solaar;solaar
pcscd;apt;cardreader;pcscd
pcsc-tools;apt;cardreader;pcsc-tools
guvcview;apt;webcam;guvcview
cheese;apt;webcam;cheese
tlp;apt;tlp;tlp
notepadqq;apt;dev;notepadqq
gpick;apt;dev;gpick
virtualbox-6.0;apt;dev;virtualbox-6.0
build-essential;apt;dev;build-essential
ubuntu-make;apt;dev;ubuntu-make
ghex;apt;dev;ghex
glade;apt;dev;glade
eric;apt;dev;eric
bluefish;apt;dev;bluefish
meld;apt;dev;meld
zeal;apt;dev;zeal
shellcheck;apt;dev;shellcheck
umbrello;apt;dev;umbrello
ack-grep;apt;dev;ack-grep
ansible;apt;dev;ansible
docker.io;apt;dev;dockerio
remark-lint;npm;dev;remark-lint
beautysh;pip;dev;beautysh
mycli;pip;dev;mycli
sqlitebrowser;apt;dev;sqlitebrowser
mysql-workbench;apt;dev;mysql-workbench
jq;apt;dev;jq
tig;apt;dev;tig
nodejs;apt;javascript;nodejslts
javascript-common;apt;javascript;javascript-common
yarn;npm;javascript;yarn
emma-cli;npm;javascript;emma-cli
jshint;npm;javascript;jshint
typescript;npm;javascript;typescript
@angular/cli;npm;javascript;angularcli
ionic;npm;javascript;ionic
cordova;npm;javascript;cordova
eslint;npm;javascript;eslint
web-ext;npm;javascript;web-ext
openjdk-11-jdk;apt;java11;openjdk-11-jdk
php7.2-cli;apt;php;php7.2-cli
php-pear;apt;php;php-pear
composer;apt;php;composer
luajit;apt;lua;luajit
ruby-dev;apt;ruby;ruby-dev
ruby-full;apt;ruby;ruby-full
ruby-rainbow;apt;ruby;ruby-rainbow
anjuta;apt;anjuta;anjuta
anjuta-extras;apt;anjuta;anjuta-extras
brackets;apt;brackets;brackets
codeblocks;apt;codeblocks;codeblocks
codeblocks-contrib;apt;codeblocks;codeblocks-contrib
geany;apt;geany;geany
geany-plugins;apt;geany;geany-plugins
pycharm-community;snap;pycharm-community;pycharm-community
pycharm-professional;snap;pycharm-professional;pycharm-professional
sublime-text;apt;sublime-text;sublime-text
kicad;apt;cad;kicad
kicad-locale-fr;apt;cad;kicad-locale-fr
librecad;apt;cad;librecad
freecad;apt;cad;freecad
code;apt;code;code
atom;apt;atom;atom
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
winehq-stable;apt;wine;winehq-stable
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
android-studio;apt;androidstudio;androidstudio
intellij-idea-community;snap;idea;idea
eclipse;snap;eclipse;eclipse
gitkraken;snap;gitkraken;gitkraken
xserver-xorg-hwe-18.04;apt;hwe;xserver-xorg-hwe-18.04
xserver-xorg-video-all-hwe-18.04;apt;hwe;xserver-xorg-video-all-hwe-18.04
linux-generic-hwe-18.04;apt;hwe;linux-generic-hwe-18.04"

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
mongodb;addRepo_MongoDB_CE
gyazo;addRepo_Gyazo
code;addRepo_VSCode
androidstudio;addRepo_AndroidStudio
docker-ce;addRepo_DockerCE
ansible;addRepo_Ansible
sublime-text;addRepo_SublimeText
vivaldi-stable;addRepo_Vivaldi
virtualbox-6.0;addRepo_VirtualBox
syncthing;addRepo_Syncthing
syncthinggtk;addRepo_SyncthingGtk
opera-stable;addRepo_Opera
insync;addRepo_Insync
google-chrome-stable;addRepo_ChromeStable
atom;addRepo_Atom
nextcloud-client;addRepo_NextCloud
wireshark;addRepo_WireShark
darktable;addRepo_DarkTable
brackets;addRepo_Brackets
kicad;addRepo_Kicad
nodejslts;addRepo_NodeLts
telegram;addRepo_Telegram
skypeforlinux;addRepo_SkypeForLinux
shotwell;addRepo_Shotwell
peek;addRepo_Peek
sqlitebrowser;addRepo_SQLiteBrowser
aptik;addRepo_Teejee2008
avidemux2.6-plugins-qt;addRepo_Avidemux2.6
avidemux2.6-qt;addRepo_Avidemux2.6
quiterss;addRepo_Quiterss
transmission-gtk;addRepo_Transmissionbt
handbrake-cli;addRepo_Handbrake
handbrake-gtk;addRepo_Handbrake
notepadqq;addRepo_Notepadqq
flacon;addRepo_Flacon
y-ppa-manager;addRepo_YPPAManager
diodon;addRepo_Diodon
sayonara;addRepo_Sayonara
corebird;addRepo_Corebird
deluge-torrent;addRepo_Deluge
deluge-gtk;addRepo_Deluge
kodi;addRepo_Kodi
indicator-sound-switcher;addRepo_IndicatorSoundSwitcher
krita;addRepo_Krita
gimp-gmic;addRepo_Gimp
gimp;addRepo_Gimp
geary;addRepo_Geary
vidcutter;addRepo_Vidcutter
oracle-java10-installer;addRepo_Java10
oracle-java10-set-default;addRepo_Java10
green-recorder;addRepo_GreenRecorder
simplescreenrecorder;addRepo_SimpleScreenRecorder
simplescreenrecorder-lib;addRepo_SimpleScreenRecorder
simplescreenrecorder-lib:i386;addRepo_SimpleScreenRecorder
zim;addRepo_Zim
grub-customizer;addRepo_GrubCustomizer
numix-gtk-theme;addRepo_Numix
plata-theme;addRepo_Plata
numix-icon-theme;addRepo_Numix
numix-icon-theme-circle;addRepo_Numix
rhythmbox-plugin-alternative-toolbar;addRepo_Rhythmbox
rhythmbox-plugin-artdisplay;addRepo_Rhythmbox
rhythmbox-plugin-cdrecorder;addRepo_Rhythmbox
rhythmbox-plugin-close-on-hide;addRepo_Rhythmbox
rhythmbox-plugin-countdown-playlist;addRepo_Rhythmbox
rhythmbox-plugin-desktopart;addRepo_Rhythmbox
rhythmbox-plugin-equalizer;addRepo_Rhythmbox
rhythmbox-plugin-fileorganizer;addRepo_Rhythmbox
rhythmbox-plugin-fullscreen;addRepo_Rhythmbox
rhythmbox-plugin-hide;addRepo_Rhythmbox
rhythmbox-plugin-jumptowindow;addRepo_Rhythmbox
rhythmbox-plugin-llyrics;addRepo_Rhythmbox
rhythmbox-plugin-looper;addRepo_Rhythmbox
rhythmbox-plugin-opencontainingfolder;addRepo_Rhythmbox
rhythmbox-plugin-parametriceq;addRepo_Rhythmbox
rhythmbox-plugin-playlist-import-export;addRepo_Rhythmbox
rhythmbox-plugin-podcast-pos;addRepo_Rhythmbox
rhythmbox-plugin-randomalbumplayer;addRepo_Rhythmbox
rhythmbox-plugin-rating-filters;addRepo_Rhythmbox
rhythmbox-plugin-remembertherhythm;addRepo_Rhythmbox
rhythmbox-plugin-repeat-one-song;addRepo_Rhythmbox
rhythmbox-plugin-rhythmweb;addRepo_Rhythmbox
rhythmbox-plugin-screensaver;addRepo_Rhythmbox
rhythmbox-plugin-smallwindow;addRepo_Rhythmbox
rhythmbox-plugin-spectrum;addRepo_Rhythmbox
rhythmbox-plugin-suspend;addRepo_Rhythmbox
rhythmbox-plugin-wikipedia;addRepo_Rhythmbox
rhythmbox-plugins;addRepo_Rhythmbox
rawtherapee;addRepo_DhorMyWay
entangle;addRepo_DhorMyWay
mkvtoolnix-gui;addRepo_MKVToolnix
purple-facebook;addRepo_Jgeboski
audacious;addRepo_Webupd8
qt5ct;addRepo_Webupd8
screenkey;addRepo_Webupd8
yad;addRepo_Webupd8
woeusb;addRepo_Webupd8
youtube-dlg;addRepo_Webupd8
cpu-g;addRepo_Atareao
iridiumbrowser;addRepo_Iridium
picard;addRepo_Picard
birdtray;addRepo_Linuxuprising
pdfarranger;addRepo_Linuxuprising
kdenlive;addRepo_KDEnlive
megasync;addRepo_MEGA
lutris;addRepo_Lutris
guake;addRepo_LinuxUprising_Guake
winehq-stable;addRepo_WineHQ
balena-etcher-electron;addRepo_Belena"

#
# Belena Etcher
#
function addRepo_Belena () {
  addKey  "keyserver.ubuntu.com" \
          "379CE192D401AB61"
  addRepo balena-etcher.list \
          "deb https://deb.etcher.io stable etcher"
}


#
# Wine HQ
#
function addRepo_WineHQ () {
  addKey "https://dl.winehq.org/wine-builds/winehq.key"
  addRepo winehq.list \
          "deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main"
}

#
# Lutris
#
function addRepo_Lutris () {
  addPPA ppa:lutris-team/lutris
}

#
# MEGASync
#
function addRepo_MEGA () {
  addKey "https://mega.nz/linux/MEGAsync/xUbuntu_18.04/Release.key"
  addRepo megasync.list \
          "deb https://mega.nz/linux/MEGAsync/xUbuntu_18.04/ ./"
}

#
# KDEnlive
#
function addRepo_KDEnlive () {
  addPPA ppa:kdenlive/kdenlive-stable
}

#
# Makoto no blog repo
#
function addRepo_Makoto () {
  addKey "https://packagecloud.io/makoto/stable/gpgkey"
  addRepo makoto.list \
          "deb https://packagecloud.io/makoto/stable/ubuntu/ bionic main"
}

#
# Plata Theme
#
function addRepo_Plata () {
  addPPA ppa:tista/plata-theme
}

#
# LinuxUpRising repo (Birdtray (for Thunderbird), PDFArranger)
#
function addRepo_Linuxuprising () {
  addPPA ppa:linuxuprising/apps
}

#
# MusicBrainz Picard
#
function addRepo_Picard () {
  addPPA ppa:musicbrainz-developers/stable
}

#
# Iridium-Browser
#
function addRepo_Iridium () {
  addKey "https://downloads.iridiumbrowser.de/ubuntu/iridium-release-sign-01.pub"
  addRepo iridium-browser.list \
          "deb [arch=amd64] https://downloads.iridiumbrowser.de/deb/ stable main" \
          "deb-src https://downloads.iridiumbrowser.de/deb/ stable main"
}

#
# Atareao ppa
#
function addRepo_Atareao () {
  addPPA ppa:atareao/atareao
}

#
# Syncthing-GTK
#
function addRepo_SyncthingGtk () {
  addKey "https://download.opensuse.org/repositories/home:kozec/xUbuntu_18.04/Release.key"
  addRepo syncthinggtk.list \
          "deb http://download.opensuse.org/repositories/home:/kozec/xUbuntu_18.04/ /"
}

#
# Linux Uprising (Guake)
#

function addRepo_LinuxUprising_Guake () {
  addPPA ppa:linuxuprising/guake
}

#
# Webupd8 (Audacious, ...)
#
function addRepo_Webupd8 () {
  addPPA ppa:nilarimogard/webupd8
}

#
# purple facebook
#
function addRepo_Jgeboski () {
  addKey "https://jgeboski.github.io/obs.key"
  addRepo jgeboski.list \
          "deb http://download.opensuse.org/repositories/home:/jgeboski/xUbuntu_18.04/ ./"
}

#
# MKVToolnix
#
function addRepo_MKVToolnix () {
  addKey "https://mkvtoolnix.download/gpg-pub-moritzbunkus.txt"
  addRepo mkv.list \
          "deb https://mkvtoolnix.download/ubuntu/ bionic main" \
          "deb-src https://mkvtoolnix.download/ubuntu/ bionic main"
}

#
# Entangle, Rawtherapee
#
function addRepo_DhorMyWay () {
  addPPA ppa:dhor/myway
}

#
# Rhythmbox
#
function addRepo_Rhythmbox () {
  addPPA ppa:fossfreedom/rhythmbox-plugins
}

#
# Numix themes/icons
#
function addRepo_Numix () {
  addPPA ppa:numix/ppa
}

#
# Grub-Customizer
#
function addRepo_GrubCustomizer () {
  addPPA ppa:danielrichter2007/grub-customizer
}

#
# Zim
#
function addRepo_Zim () {
  addPPA ppa:jaap.karssenberg/zim
}

#
# Simple-Screen-Recorder
#
function addRepo_SimpleScreenRecorder () {
  addPPA ppa:maarten-baert/simplescreenrecorder
}

#
# Green-Recorder
#
function addRepo_GreenRecorder () {
  addPPA ppa:fossproject/ppa
}

#
# Oracle JAVA 10
#
function addRepo_Java10 () {
  addPPA ppa:linuxuprising/java
}

#
# Vidcutter
#
function addRepo_Vidcutter () {
  addPPA ppa:ozmartian/apps
}


#
# Geary
#
function addRepo_Geary () {
  addPPA ppa:geary-team/releases
}

#
# Gimp / Gmic
#
function addRepo_Gimp () {
  addPPA ppa:otto-kesselgulasch/gimp
}

#
# Krita
#
function addRepo_Krita () {
  addPPA ppa:kritalime/ppa
}

#
# indicator-sound-switcher
#
function addRepo_IndicatorSoundSwitcher () {
  addPPA ppa:yktooo/ppa
}

#
# Kodi / XBMC
#
function addRepo_Kodi () {
  addPPA ppa:team-xbmc/ppa
}

#
# Deluge
#
function addRepo_Deluge () {
  addPPA ppa:deluge-team/ppa
}

#
# Corebird
#
function addRepo_Corebird () {
  addPPA ppa:ubuntuhandbook1/corebird
}

#
# Sayonara
#
function addRepo_Sayonara () {
addPPA ppa:lucioc/sayonara
}

#
# Diodon
#
function addRepo_Diodon () {
  addPPA ppa:diodon-team/stable
}

#
# Y-PPA-Manager
#
function addRepo_YPPAManager () {
addPPA ppa:webupd8team/y-ppa-manager
}

#
# flacon
#
function addRepo_Flacon () {
  addPPA ppa:flacon/ppa
}

#
# Notepadqq
#
function addRepo_Notepadqq () {
  addPPA ppa:notepadqq-team/notepadqq
}

#
# Handbrake
#
function addRepo_Handbrake () {
  addPPA ppa:stebbins/handbrake-releases
}

#
# Transmission-BT
#
function addRepo_Transmissionbt () {
  addPPA ppa:transmissionbt/ppa
}

#
# QuiteRSS
#
function addRepo_Quiterss () {
  addPPA ppa:quiterss/quiterss
}

#
# Avidemux
#
function addRepo_Avidemux2.6 () {
  addPPA ppa:ubuntuhandbook1/avidemux
}

#
# aptik, conky-manager, selene, timeshift
#
function addRepo_Teejee2008 () {
  addPPA ppa:teejee2008/ppa
}

#
# SQLiteBrowser
#
function addRepo_SQLiteBrowser () {
  addPPA ppa:linuxgndu/sqlitebrowser
}

#
# Peek
#
function addRepo_Peek () {
  addPPA ppa:peek-developers/stable
}

#
# Shotwell
#
function addRepo_Shotwell () {
  addPPA ppa:yg-jensge/shotwell
}

#
# Telegram
#
function addRepo_Telegram () {
  addPPA ppa:atareao/telegram
}

#
# Skype for Linux
#
function addRepo_SkypeForLinux () {
  addKey "https://repo.skype.com/data/SKYPE-GPG-KEY"
  addRepo "skype-stable.list" \
          "deb [arch=amd64] https://repo.skype.com/deb stable main"
}

#
# NodeJS LTS
#
function addRepo_NodeLts () {
  addKey "https://deb.nodesource.com/gpgkey/nodesource.gpg.key"
  addRepo "nodesource.list" \
          "deb https://deb.nodesource.com/node_10.x bionic main" \
          "deb-src https://deb.nodesource.com/node_10.x bionic main"
}

#
# Kicad 4
#
function addRepo_Kicad () {
  addPPA ppa:js-reynaud/kicad-4
}

#
# Brackets IDE
#
function addRepo_Brackets () {
  addPPA ppa:webupd8team/brackets
}

#
# Darktable RAW Editor
#
function addRepo_DarkTable () {
  addPPA ppa:pmjdebruijn/darktable-release
}

#
# WireShark
#
function addRepo_WireShark () {
  addPPA ppa:wireshark-dev/stable
}

#
# NextCloud
#
function addRepo_NextCloud () {
  addPPA ppa:nextcloud-devs/client
}

#
# Atom IDE
#
function addRepo_Atom () {
  addKey "https://packagecloud.io/AtomEditor/atom/gpgkey"
  addRepo atom.list \
          "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"
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
          "deb http://apt.insynchq.com/ubuntu bionic non-free contrib"
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
# VirtualBox
#
function addRepo_VirtualBox () {
  addKey "http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc"
  addKey "http://download.virtualbox.org/virtualbox/debian/oracle_vbox_2016.asc"
  addRepo virtualbox.list \
          "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bionic contrib"
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
# Ansible
#
function addRepo_Ansible () {
  addPPA ppa:ansible/ansible
}

#
# Docker CE
#
function addRepo_DockerCE () {
  addKey "https://download.docker.com/linux/ubuntu/gpg"
  addRepo "docker.list" \
          "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
}

#
# Gyazo
#
function addRepo_Gyazo () {
  addKey "https://packagecloud.io/gyazo/gyazo-for-linux/gpgkey"
  addRepo "gyazo_gyazo-for-linux.list" \
          "deb https://packagecloud.io/gyazo/gyazo-for-linux/ubuntu/ bionic main" \
          "deb-src https://packagecloud.io/gyazo/gyazo-for-linux/ubuntu/ bionic main"
}

#
# MongoDB 4 CE
#
function addRepo_MongoDB_CE () {
  addKey "https://www.mongodb.org/static/pgp/server-4.0.asc"
  addRepo "mongodb-org-4.0.list" \
          "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse"
}

#
# LibreOffice 6
#
function addRepo_Libreoffice6 () {
  addPPA ppa:libreoffice/ppa
}

#
# Kodi (Beta)
#
function addRepo_KodiBeta () {
  addPPA ppa:team-xbmc/unstable
}

#
# Kodi (Nightly)
#
function addRepo_KodiNightly () {
  addPPA ppa:team-xbmc/xbmc-nightly
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
  addPPA ppa:maarten-fonville/android-studio
}

#-----------------------------------------------------------------------------#
# Package pre install functions list                                         #
#-----------------------------------------------------------------------------#

#
# list of pre install functions
# fields : unique ID, function to process before install
#
AppsPreTrtFct="opera-stable;opera_PreTrtFct
steam;steam_PreTrtFct
wireshark;wireshark_PreTrtFct"

#
# Opera
#
function opera_PreTrtFct () {
  runCmd "echo opera-stable opera-stable/add-deb-source boolean false | sudo debconf-set-selections" \
         "setting as do not add repo"
}

#
# Steam
#
function steam_PreTrtFct () {
  runCmd "echo \"steam steam/purge note\" | sudo debconf-set-selections" \
         "accepting steam licence"
  runCmd "echo \"steam steam/license note\" | sudo debconf-set-selections" \
         "accepting steam licence 2/3"
  runCmd "echo \"steam steam/question select I AGREE\" | sudo debconf-set-selections" \
         "accepting steam licence 3/3"
}

#
# Wireshark
#
function wireshark_PreTrtFct () {
  runCmd "echo wireshark-common wireshark-common/install-setuid boolean true | sudo debconf-set-selections" \
         "setting Wireshark as root only"
}

#-----------------------------------------------------------------------------#
# Package post install functions list                                         #
#-----------------------------------------------------------------------------#

#
# list of post install functions
# fields : unique ID, function to process after install
#
AppsPostTrtFct="nitrogen;nitrogen_PostTrtFct
mongodb;mongodb_PostTrtFct
qttools5-dev-tools;qt_PostTrtFct
plank;plank_PostTrtFct
androidstudio;android_PostTrtFct
nodejs8lts;nodejs8lts_PostTrtFct
angularcli;angularcli_PostTrtFct
dockerio;dockerio_PostTrtFct
megasync;megasync_PostTrtFct"

#
# MEGASync
#
function megasync_PostTrtFct () {
  if which thunar >/dev/null; then
    installPackage apt thunar-megasync
  fi
  if which nautilus >/dev/null; then
    installPackage apt nautilus-megasync
  fi
}

#
# Docker
#
function dockerio_PostTrtFct () {
  runCmd "sudo systemctl start docker" \
         "start docker service"
  runCmd "sudo systemctl enable docker" \
         "add docker service at boot"
  runCmd "sudo groupadd docker" \
          "add docker group"
  cUser=$(whoami)
  runCmd "sudo usermod -aG docker $cUser" \
          "add current user to docker group"
}

#
# Angular CLI
#
function angularcli_PostTrtFct () {
  if which yarn >/dev/null; then
    runCmd "ng config -g cli.packageManager yarn" \
           "using yarn instead of nom for angular/cli"
  fi
}

#
# NodeJS 8 LTS
#
function nodejs8lts_PostTrtFct () {
  if which /usr/local/bin/node >/dev/null; then
    runCmd "sudo rm /usr/local/bin/node" \
           "cleaning/removing legacy node files"
  else
    print "[INFO] nothing to clean, good :-)"
  fi
}

#
# Android Env for adb, fastboot, ....
#
function android_PostTrtFct () {
  printf "[CMD] Adding Android devices UDEV rules "

cat << EOF | sudo tee /etc/udev/rules.d/99-android.rules
SUBSYSTEM=="usb", ATTR{idVendor}=="0502", MODE="0666", OWNER="$myHomedir" # Acer
SUBSYSTEM=="usb", ATTR{idVendor}=="0b05", MODE="0666", OWNER="$myHomedir" # Asus
SUBSYSTEM=="usb", ATTR{idVendor}=="413c", MODE="0666", OWNER="$myHomedir" # Dell
SUBSYSTEM=="usb", ATTR{idVendor}=="0489", MODE="0666", OWNER="$myHomedir" # Foxconn
SUBSYSTEM=="usb", ATTR{idVendor}=="04c5", MODE="0666", OWNER="$myHomedir" # Fujitsu
SUBSYSTEM=="usb", ATTR{idVendor}=="04c5", MODE="0666", OWNER="$myHomedir" # Fujitsu-Toshiba
SUBSYSTEM=="usb", ATTR{idVendor}=="091e", MODE="0666", OWNER="$myHomedir" # Garmin-Asus
SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", MODE="0666", OWNER="$myHomedir" # Google-Nexus
SUBSYSTEM=="usb", ATTR{idVendor}=="201E", MODE="0666", OWNER="$myHomedir" # Haier
SUBSYSTEM=="usb", ATTR{idVendor}=="109b", MODE="0666", OWNER="$myHomedir" # Hisense
SUBSYSTEM=="usb", ATTR{idVendor}=="0bb4", MODE="0666", OWNER="$myHomedir" # HTC
SUBSYSTEM=="usb", ATTR{idVendor}=="12d1", MODE="0666", OWNER="$myHomedir" # Huawei
SUBSYSTEM=="usb", ATTR{idVendor}=="8087", MODE="0666", OWNER="$myHomedir" # Intel
SUBSYSTEM=="usb", ATTR{idVendor}=="24e3", MODE="0666", OWNER="$myHomedir" # K-Touch
SUBSYSTEM=="usb", ATTR{idVendor}=="2116", MODE="0666", OWNER="$myHomedir" # KT Tech
SUBSYSTEM=="usb", ATTR{idVendor}=="0482", MODE="0666", OWNER="$myHomedir" # Kyocera
SUBSYSTEM=="usb", ATTR{idVendor}=="17ef", MODE="0666", OWNER="$myHomedir" # Lenovo
SUBSYSTEM=="usb", ATTR{idVendor}=="1004", MODE="0666", OWNER="$myHomedir" # LG
SUBSYSTEM=="usb", ATTR{idVendor}=="22b8", MODE="0666", OWNER="$myHomedir" # Motorola
SUBSYSTEM=="usb", ATTR{idVendor}=="0e8d", MODE="0666", OWNER="$myHomedir" # MTK
SUBSYSTEM=="usb", ATTR{idVendor}=="0409", MODE="0666", OWNER="$myHomedir" # NEC
SUBSYSTEM=="usb", ATTR{idVendor}=="2080", MODE="0666", OWNER="$myHomedir" # Nook
SUBSYSTEM=="usb", ATTR{idVendor}=="0955", MODE="0666", OWNER="$myHomedir" # Nvidia
SUBSYSTEM=="usb", ATTR{idVendor}=="2257", MODE="0666", OWNER="$myHomedir" # OTGV
SUBSYSTEM=="usb", ATTR{idVendor}=="10a9", MODE="0666", OWNER="$myHomedir" # Pantech
SUBSYSTEM=="usb", ATTR{idVendor}=="1d4d", MODE="0666", OWNER="$myHomedir" # Pegatron
SUBSYSTEM=="usb", ATTR{idVendor}=="0471", MODE="0666", OWNER="$myHomedir" # Philips
SUBSYSTEM=="usb", ATTR{idVendor}=="04da", MODE="0666", OWNER="$myHomedir" # PMC-Sierra
SUBSYSTEM=="usb", ATTR{idVendor}=="05c6", MODE="0666", OWNER="$myHomedir" # Qualcomm
SUBSYSTEM=="usb", ATTR{idVendor}=="1f53", MODE="0666", OWNER="$myHomedir" # SK Telesys
SUBSYSTEM=="usb", ATTR{idVendor}=="04e8", MODE="0666", OWNER="$myHomedir" # Samsung
SUBSYSTEM=="usb", ATTR{idVendor}=="04dd", MODE="0666", OWNER="$myHomedir" # Sharp
SUBSYSTEM=="usb", ATTR{idVendor}=="054c", MODE="0666", OWNER="$myHomedir" # Sony
SUBSYSTEM=="usb", ATTR{idVendor}=="0fce", MODE="0666", OWNER="$myHomedir" # Sony Ericsson
SUBSYSTEM=="usb", ATTR{idVendor}=="0fce", MODE="0666", OWNER="$myHomedir" # Sony Mobile Communications
SUBSYSTEM=="usb", ATTR{idVendor}=="2340", MODE="0666", OWNER="$myHomedir" # Teleepoch
SUBSYSTEM=="usb", ATTR{idVendor}=="0930", MODE="0666", OWNER="$myHomedir" # Toshiba
SUBSYSTEM=="usb", ATTR{idVendor}=="19d2", MODE="0666", OWNER="$myHomedir" # ZTE
EOF

  ret_code=$?
  retCode $ret_code

  runCmd "sudo service udev restart" \
         "restarting UDEV service"
}

#
# Plank themes
#
function plank_PostTrtFct () {
  typeset ret_code

  if ! (( $(ps -ef | grep -v grep | grep plank | wc -l) > 0 )); then
    plank 2&>1 >/dev/null &
    sleep 10
  fi

  yes | sh -c "cd ~ \
               && mkdir -p ~/.temp-plank-themer \
               && cd ~/.temp-plank-themer \
               && wget https://github.com/rhoconlinux/plank-themer/archive/master.zip \
               && unzip master.zip \
               && cd plank-themer-master/ \
               && rm -fR ~/.config/plank/dock1/theme_index; \
               rm -fR ~/.config/plank/dock1/themes-repo; \
               mkdir -p ~/.config/plank/dock1; \
               cp -a theme_index/ ~/.config/plank/dock1 \
               && cp -a themes-repo/ ~/.config/plank/dock1 \
               && cd ~ \
               && rm -R ~/.temp-plank-themer \
               && sh ~/.config/plank/dock1/theme_index/plank-on-dock-themer.sh" &>> $logFile
  ret_code=$?
  retCode $ret_code
}

#
# QT5 Dev Tools
#
function qt_PostTrtFct () {
  runCmd "sudo ln -s /usr/share/qtchooser/qt5-x86_64-linux-gnu.conf /usr/lib/x86_64-linux-gnu/qtchooser/default.conf" \
         "set QT5 as default"
}

#
# MongoDB CE
#
function mongodb_PostTrtFct () {
  runCmd "sudo systemctl enable mongod.service" \
         "enabling mongod service at boot"
  runCmd "sudo systemctl start mongod.service" \
         "starting mongod service"
}

#
# nitrogen post install function
#
function nitrogen_PostTrtFct () {
  if isMate; then
    runCmd "gsettings set org.mate.background draw-background false" \
           "disabling Caja background management"
    runCmd "gsettings set org.mate.background show-desktop-icons false" \
           "disabling Caja desktop icons management"

    createAppShortcut "bash -c \"sleep 10; nitrogen --restore\"" \
                      "/usr/share/icons/hicolor/48x48/apps/nitrogen.png" \
                      "Utility;GTK" \
                      "Nitrogen" \
                      "local" \
                      "start"
    update-menus
  elif isCinnamon; then
    runCmd "gsettings set org.nemo.desktop draw-background false" \
           "disabling Caja background management"
    runCmd "gsettings set org.nemo.desktop show-desktop-icons false" \
           "disabling Caja desktop icons management"

    createAppShortcut "bash -c \"sleep 10; nitrogen --restore\"" \
                      "/usr/share/icons/hicolor/48x48/apps/nitrogen.png" \
                      "Utility;GTK" \
                      "Nitrogen" \
                      "local" \
                      "start"
    update-menus
  else
    printf "[ERR] only Mate/Cinnamon Desktop is currently supported\n"
  fi
}
