#-----------------------------------------------------------------------------#
# Yggdrasil NG                                                                #
#    compatibility : see documentation or man pages                           #
#    author : Francois B. (Makotosan/Shakasan)                                #
#    licence : GPLv3                                                          #
#    website : https://makotonoblog.be/                                       #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
#                                                                             #
# Ubuntu 20.04 / Linux Mint 20                                                #
#                                                                             #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# list of apps with required package manager and category                     #
#-----------------------------------------------------------------------------#

#
# List of packages available
# fields : package name, package manager, category, unique ID for external functions
#
Apps="snapd;apt;snap;snapd
snap-store;snap;snap;snap-store
apt-transport-https;apt;init;apt-transport-https
flatpak;apt;init;flatpak
ubuntu-make;apt;init;ubuntu-make
ruby-dev;apt;init;ruby-dev
nodejs;apt;init;nodejslts
python3-pip;apt;init;python3-pip
python3-distutils;apt;init;python3-distutils
pip;pip;init;setuptools
setuptools;pip;init;setuptools
cifs-utils;apt;base;cifs-utils
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
sysstat;apt;base;sysstat
dcfldd;apt;base;dcfldd
mdadm;apt;base;mdadm
ncdu;apt;base;ncdu
com.spotify.Client;flatpak;multimedia;spotify
qmmp;apt;multimedia;qmmp
org.shotcut.Shotcut;flatpak;multimedia;shotcut
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
handbrake;apt;multimedia;handbrake
avidemux2.7-qt5;apt;multimedia;avidemux
mjpegtools;apt;multimedia;mjpegtools
twolame;apt;multimedia;twolame
lame;apt;multimedia;lame
gpicview;apt;multimedia;gpicview
vlc;apt;multimedia;vlc
shotwell;apt;multimedia;shotwell
darktable;apt;multimedia;darktable
ffmpeg;apt;multimedia;ffmpeg
scribus;apt;multimedia;scribus
gnome-font-viewer;apt;multimedia;gnome-font-viewer
moc;apt;multimedia;moc
webp;apt;multimedia;webp
cuetools;apt;multimedia;cuetools
shntool;apt;multimedia;shntool
flac;apt;multimedia;flac
org.entangle_photo.Manager;flatpak;multimedia;entangle
krita;apt;multimedia;krita
soundconverter;apt;multimedia;soundconverter
gimp;apt;multimedia;gimp
gimp-help-fr;apt;multimedia;gimp
quodlibet;apt;multimedia;quodlibet
peek;apt;multimedia;peek
bino;apt;multimedia;bino
kdenlive;apt;multimedia;kdenlive
com.github.huluti.ImCompressor;flatpak;multimedia;ImCompressor
flacon;apt;multimedia;flacon
simplescreenrecorder;apt;multimedia;simplescreenrecorder
com.ozmartians.VidCutter;flatpak;multimedia;vidcutter
com.orama_interactive.Pixelorama;flatpak;multimedia;pixelorama
syncthing;apt;internet;syncthing
syncthing-gtk;apt;internet;syncthinggtk
insync;apt;internet;insync
megasync;apt;internet;megasync
megacmd;apt;internet;megacmd
com.discordapp.Discord;flatpak;internet;discord
com.teamspeak.TeamSpeak;flatpak;internet;TeamSpeak
quiterss;apt;internet;quiterss
opera-stable;apt;internet;opera-stable
google-chrome-stable;apt;internet;google-chrome-stable
chromium-browser;apt;internet;chromium-browser
chromium-browser-l10n;apt;internet;chromium-browser-l10n
filezilla;apt;internet;filezilla
hexchat;apt;internet;hexchat
mumble;apt;internet;mumble
org.gnome.Geary;flatpak;internet;geary
birdtray;apt;internet;birdtray
telegram;apt;internet;telegram
skypeforlinux;apt;internet;skypeforlinux
nextcloud-desktop;apt;internet;nextcloud-desktop
deluge-gtk;apt;internet;deluge-gtk
vivaldi-stable;apt;internet;vivaldi-stable
transmission-gtk;apt;internet;transmission-gtk
youtube-dl;pip;internet;youtube-dl
gallery-dl;pip;internet;gallery-dl
cawbird;apt;internet;cawbird
us.zoom.Zoom;flatpak;internet;zoom
qtqr;apt;utilities;qtqr
cpu-g;apt;utilities;cpu-g
screenfetch;apt;utilities;screenfetch
xcalib;apt;utilities;xcalib
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
tilix;apt;utilities;tilix
gufw;apt;utilities;gufw
numlockx;apt;utilities;numlockx
grub-customizer;apt;utilities;grub-customizer
zim;apt;utilities;zim
diodon;apt;utilities;diodon
qt5ct;apt;utilities;qt5ct
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
screenkey;apt;utilities;screenkey
pdfgrep;apt;utilities;pdfgrep
coinmon;npm;utilities;coinmon
tldr;pip;utilities;tldr
fdupes;apt;utilities;fdupes
balena-etcher-electron;apt;utilities;balena-etcher-electron
org.gabmus.hydrapaper;flatpak;utilities;hydrapaper
nvme-cli;apt;utilities;nvme-cli
font-manager;apt;utilities;font-manager
gyazo;apt;utilities;gyazo
inxi;apt;utilities;inxi
python3-dev;apt;python;python3-dev
python3-pyqt5;apt;python;python3-pyqt5
pyqt5-dev-tools;apt;python;pyqt5-dev-tools
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
nautilus;apt;nautilus;nautilus
file-roller;apt;nautilus;file-roller
nautilus-image-converter;apt;nautilus;nautilus-image-converter
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
gimp-data-extras;apt;gimp;gimp-data-extras
gimp-lensfun;apt;gimp;gimp-lensfun
gimp-gmic;apt;gimp;gimp-gmic
gimp-texturize;apt;gimp;gimp-texturize
rhythmbox-plugin-alternative-toolbar;apt;rhythmbox;rhythmbox-plugin-alternative-toolbar
rhythmbox-plugin-artdisplay;apt;rhythmbox;rhythmbox-plugin-artdisplay
rhythmbox-plugin-cdrecorder;apt;rhythmbox;rhythmbox-plugin-cdrecorder
rhythmbox-plugin-close-on-hide;apt;rhythmbox;rhythmbox-plugin-close-on-hide
rhythmbox-plugin-countdown-playlist;apt;rhythmbox;rhythmbox-plugin-countdown-playlist
rhythmbox-plugin-desktopart;apt;rhythmbox;rhythmbox-plugin-desktopart
rhythmbox-plugin-equalizer;apt;rhythmbox;rhythmbox-plugin-equalizer
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
unbound;apt;unbound;unbound
arc-theme;apt;gtkthemes;arc-theme
numix-gtk-theme;apt;gtkthemes;numix-gtk-theme
numix-blue-gtk-theme;apt;gtkthemes;numix-blue-gtk-theme
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
virtualbox;apt;dev;virtualbox
build-essential;apt;dev;build-essential
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
jq;apt;dev;jq
tig;apt;dev;tig
com.getpostman.Postman;flatpak;dev;postman
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
php7.4-cli;apt;php;php7.4-cli
php-pear;apt;php;php-pear
composer;apt;php;composer
luajit;apt;lua;luajit
ruby-dev;apt;ruby;ruby-dev
ruby-full;apt;ruby;ruby-full
ruby-rainbow;apt;ruby;ruby-rainbow
anjuta;apt;anjuta;anjuta
anjuta-extras;apt;anjuta;anjuta-extras
codeblocks;apt;codeblocks;codeblocks
codeblocks-contrib;apt;codeblocks;codeblocks-contrib
geany;apt;geany;geany
geany-plugins;apt;geany;geany-plugins
io.brackets.Brackets;flatpak;brackets;brackets
sublime-text;apt;sublime-text;sublime-text
kicad;apt;cad;kicad
librecad;apt;cad;librecad
freecad;apt;cad;freecad
code;apt;code;code
atom;apt;atom;atom
sqlparse;pip;atom;sqlparse
flake8;pip;atom;flake8
autopep8;pip;atom;autopep8
htmlbeautifier;gem;atom;htmlbeautifier
nitrogen;apt;nitrogen;nitrogen
libreoffice;apt;office;libreoffice6
winehq-stable;apt;wine;winehq-stable
winetricks;apt;wine;winetricks
playonlinux;apt;wine;playonlinux
qt5-doc;apt;qt;qt5-doc
qttools5-doc;apt;qt;qttools5-doc
qttools5-dev-tools;apt;qt;qttools5-dev-tools
qttools5-examples;apt;qt;qttools5-examples
qttools5-doc-html;apt;qt;qttools5-doc-html
fbreader;apt;ebook;fbreader
calibre;apt;ebook;calibre
android-studio;apt;androidstudio;androidstudio
com.axosoft.GitKraken;flatpak;gitkraken;gitkraken
linux-generic-hwe-20.04;apt;hwe;linux-generic-hwe-20.04"

#TODO : no focal support yet
#aptik;apt;utilities;aptik
#green-recorder;apt;multimedia;green-recorder
#mongodb-org;apt;mongodb;mongodb

#-----------------------------------------------------------------------------#
# Specific Repo list and functions                                            #
#-----------------------------------------------------------------------------#

#
# list of specific repositories
# fields : unique ID, function to add repo
#
AppsRepo="code;addRepo_VSCode
androidstudio;addRepo_AndroidStudio
sublime-text;addRepo_SublimeText
vivaldi-stable;addRepo_Vivaldi
syncthing;addRepo_Syncthing
opera-stable;addRepo_Opera
insync;addRepo_Insync
google-chrome-stable;addRepo_ChromeStable
atom;addRepo_Atom
nodejslts;addRepo_NodeLts
telegram;addRepo_Telegram
skypeforlinux;addRepo_SkypeForLinux
y-ppa-manager;addRepo_YPPAManager
diodon;addRepo_Diodon
krita;addRepo_Krita
oracle-java10-installer;addRepo_Java10
oracle-java10-set-default;addRepo_Java10
plata-theme;addRepo_Plata
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
audacious;addRepo_Webupd8
qt5ct;addRepo_Webupd8
screenkey;addRepo_Webupd8
yad;addRepo_Webupd8
cpu-g;addRepo_Atareao
picard;addRepo_Picard
birdtray;addRepo_Linuxuprising
pdfarranger;addRepo_Linuxuprising
kdenlive;addRepo_KDEnlive
lutris;addRepo_Lutris
balena-etcher-electron;addRepo_Belena
font-manager;addRepo_FontManager
megasync;addRepo_MEGA
deluge-gtk;addRepo_Deluge
cawbird;addRepo_Cawbird
indicator-sound-switcher;addRepo_IndicatorSoundSwitcher
flacon;addRepo_Flacon
gyazo;addRepo_Gyazo
simplescreenrecorder;addRepo_SimpleScreenRecorder
guake;addRepo_LinuxUprising_Guake
peek;addRepo_Peek
quiterss;addRepo_Quiterss
virtualbox;addRepo_VirtualBox
sqlitebrowser;addRepo_SQLiteBrowser
numix-icon-theme;addRepo_Numix
numix-icon-theme-circle;addRepo_Numix
mkvtoolnix-gui;addRepo_MKVToolnix
transmission-gtk;addRepo_Transmissionbt
handbrake-cli;addRepo_Handbrake
handbrake;addRepo_Handbrake
kodi;addRepo_Kodi
avidemux;addRepo_Avidemux
winehq-stable;addRepo_WineHQ
audacity;addRepo_Audacity
ubuntu-make;addRepo_UbuntuMake"

#TODO : no focal support yet / or not needed yet
#rawtherapee;addRepo_DhorMyWay
#entangle;addRepo_DhorMyWay
#woeusb;addRepo_Webupd8
#selene;addRepo_Teejee2008
#youtube-dlg;addRepo_Webupd8
#brackets;addRepo_Brackets
#vidcutter;addRepo_Vidcutter
#notepadqq;addRepo_Notepadqq
#darktable;addRepo_DarkTable
#numix-gtk-theme;addRepo_Numix
#aptik;addRepo_Teejee2008
#grub-customizer;addRepo_GrubCustomizer
#syncthinggtk;addRepo_SyncthingGtk
#wireshark;addRepo_WireShark
#green-recorder;addRepo_GreenRecorder
#mongodb;addRepo_MongoDB_CE
#flatpak;addRepo_flatpak

#
# Audacity
#
function addRepo_Audacity () {
  addPPA ppa:ubuntuhandbook1/audacity
}

#
# Ubuntu Make
#
function addRepo_UbuntuMake () {
  addPPA ppa:lyzardking/ubuntu-make
}

#
# Cawbird #TODO
#
function addRepo_Cawbird () {
  addKey "https://download.opensuse.org/repositories/home:IBBoard:cawbird/xUbuntu_20.04/Release.key"
  addRepo cawbird.list \
          "deb http://download.opensuse.org/repositories/home:/IBBoard:/cawbird/xUbuntu_20.04/ /"
}

#
# Font Manager
#
function addRepo_FontManager () {
  addPPA ppa:font-manager/staging
}


#
# Flatpak #TODO : no focal support yet
#
# function addRepo_flatpak () {
#   addPPA ppa:alexlarsson/flatpak
# }


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
          "deb https://dl.winehq.org/wine-builds/ubuntu/ focal main"
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
  addKey "https://mega.nz/linux/MEGAsync/xUbuntu_20.04/Release.key"
  addRepo megasync.list \
          "deb https://mega.nz/linux/MEGAsync/xUbuntu_20.04/ ./"
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
          "deb https://packagecloud.io/makoto/stable/ubuntu/ focal main"
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
# Atareao ppa
#
function addRepo_Atareao () {
  addPPA ppa:atareao/atareao
}

#
# Syncthing-GTK #TODO : no focal support yet (repo and app)
#
# function addRepo_SyncthingGtk () {
#   addKey "https://download.opensuse.org/repositories/home:kozec/xUbuntu_18.04/Release.key"
#   addRepo syncthinggtk.list \
#           "deb http://download.opensuse.org/repositories/home:/kozec/xUbuntu_18.04/ /"
# }

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
# MKVToolnix
#
function addRepo_MKVToolnix () {
  addKey "https://mkvtoolnix.download/gpg-pub-moritzbunkus.txt"
  addRepo mkv.list \
          "deb https://mkvtoolnix.download/ubuntu/ focal main" \
          "deb-src https://mkvtoolnix.download/ubuntu/ focal main"
}

#
# Entangle, Rawtherapee #TODO : no focal support yet ?
#
# function addRepo_DhorMyWay () {
#   addPPA ppa:dhor/myway
# }

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
# Grub-Customizer #TODO : no focal support yet
#
# function addRepo_GrubCustomizer () {
#   addPPA ppa:danielrichter2007/grub-customizer
# }

#
# Simple-Screen-Recorder
#
function addRepo_SimpleScreenRecorder () {
  addPPA ppa:maarten-baert/simplescreenrecorder
}

#
# Green-Recorder #TODO : no focal support yet
#
# function addRepo_GreenRecorder () {
#   addPPA ppa:fossproject/ppa
# }

#
# Oracle JAVA 10
#
function addRepo_Java10 () {
  addPPA ppa:linuxuprising/java
}

#
# Vidcutter #TODO : no focal support yet
#
# function addRepo_Vidcutter () {
#   addPPA ppa:ozmartian/apps
# }

#
# Krita
#
function addRepo_Krita () {
  addPPA ppa:kritalime/ppa
}

#
# indicator-sound-switcher #TODO
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
# Deluge #TODO
#
function addRepo_Deluge () {
  addPPA ppa:deluge-team/stable
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
# Notepadqq #TODO : no focal support yet
#
# function addRepo_Notepadqq () {
#   addPPA ppa:notepadqq-team/notepadqq
# }

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
function addRepo_Avidemux () {
  addPPA ppa:ubuntuhandbook1/avidemux
}

#
# conky-manager, selene, timeshift
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
          "deb https://deb.nodesource.com/node_12.x focal main" \
          "deb-src https://deb.nodesource.com/node_12.x focal main"
}

#
# Brackets IDE #TODO : no focal support yet and ever ?
#
# function addRepo_Brackets () {
#   addPPA ppa:webupd8team/brackets
# }

#
# Darktable RAW Editor #TODO : no focal support yet
#
# function addRepo_DarkTable () {
#   addPPA ppa:pmjdebruijn/darktable-release
# }

#
# WireShark #TODO : no focal support yet
#
# function addRepo_WireShark () {
#   addPPA ppa:wireshark-dev/stable
# }

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
  addKey  "keyserver.ubuntu.com" \
          "ACCAF35C"
  addRepo insync.list \
          "deb http://apt.insync.io/ubuntu focal non-free contrib"
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
          "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian focal contrib"
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
# Gyazo
#
function addRepo_Gyazo () {
  addKey "https://packagecloud.io/gyazo/gyazo-for-linux/gpgkey"
  addRepo "gyazo_gyazo-for-linux.list" \
          "deb https://packagecloud.io/gyazo/gyazo-for-linux/ubuntu/ focal main" \
          "deb-src https://packagecloud.io/gyazo/gyazo-for-linux/ubuntu/ focal main"
}

#
# MongoDB 4 CE #TODO : no focal support yet
#
# function addRepo_MongoDB_CE () {
#   addKey "https://www.mongodb.org/static/pgp/server-4.2.asc"
#   addRepo "mongodb-org-4.2.list" \
#           "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse"
# }

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
# Package pre install functions list                                          #
#-----------------------------------------------------------------------------#

#
# list of pre install functions
# fields : unique ID, function to process before install
#
AppsPreTrtFct="opera-stable;opera_PreTrtFct
steam;steam_PreTrtFct
wireshark;wireshark_PreTrtFct
snapd;snapd_PreTrtFct"

#
# Snap
#
function snapd_PreTrtFct () {
  if isMint20; then
    runCmd "sudo rm /etc/apt/preferences.d/nosnap.pref" \
           "remove snapd installation restriction [ I'm allergic to it, but need it for some pieces of software... Devs, please provide deb package ;) ]"
  fi
}

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
nodejslts;nodejslts_PostTrtFct
angularcli;angularcli_PostTrtFct
dockerio;dockerio_PostTrtFct
megasync;megasync_PostTrtFct
flatpak;flatpak_PostTrtFct
ruby-dev;ruby-dev_PostTrtFct
virtualbox;virtualbox_PostTrtFct"

#
# virtualbox
#
function virtualbox_PostTrtFct () {
  cUser=$(whoami)
  runCmd "sudo adduser $cUser vboxusers" \
         "adding user to vboxusers group"
}

#
# NPM Update
#
function nodejslts_PostTrtFct () {
  printf "[NPM] set prefix in ~/.local "
  printf "\n[NPM] set prefix in ~/.local\n" &>> $logFile
  npm config set prefix /home/$myHomedir/.local &>> $logFile
  ret_code=$?
  retCode $ret_code

  if [ `grep 'PATH=~/.local/bin/:$PATH' ~/.bashrc | wc -l` -gt 0 ]; then
    printf "[NPM] add ~/.local/bin to PATH ... already added  [ "$BOLDVERT"OK"$NORMAL" ]\n "
  else
    printf "[NPM] add ~/.local/bin to PATH "
    printf "\n[NPM] add ~/.local/bin to PATH\n" &>> $logFile
    echo 'PATH=~/.local/bin/:$PATH' | tee -a ~/.bashrc &>> $logFile
    ret_code=$?
    retCode $ret_code
  fi

  printf "[NPM] update npm "
  printf "\n[NPM] update npm\n" &>> $logFile
  npm i -g npm &>> $logFile
  ret_code=$?
  retCode $ret_code
}


#
# GEM / Ruby Dev
#
function ruby-dev_PostTrtFct () {
  printf "[GEM] update --system "
  printf "\n[GEM] update --system\n" &>> $logFile
  sudo gem update --system &>> $logFile
  ret_code=$?
  retCode $ret_code
}

#
# Flatpak
#
function flatpak_PostTrtFct () {
  if which flatpak >/dev/null; then
      printf "[FLATPAK] Adding Flathub repository "
      printf "\n[FLATPAK] Adding Flathub repository\n" &>> $logFile
      sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &>> $logFile
      ret_code=$?
      retCode $ret_code
  fi
}


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
  runCmd "sudo groupadd --force docker" \
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
           "using yarn instead of npm for angular/cli"
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
