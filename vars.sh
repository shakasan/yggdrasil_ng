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
# repo/ppa added counter
#
repoAdded=0

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