#-----------------------------------------------------------------------------#
# Yggdrasil NG                                                                #
#    compatibility : see documentation or man pages                           #
#    author : Francois B. (Makotosan/Shakasan)                                #
#    licence : GPLv3                                                          #
#    website : https://makotonoblog.be/                                       #
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# Script's cons. and vars.                                                    #
#-----------------------------------------------------------------------------#

#
# app version number
#
version="0.6.1-b1"

#
# myHomedir is used in full paths to the homedir
#
myHomedir=$(whoami)

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
# ygginit flag for CLI mode
#
ygginitCount=false


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
