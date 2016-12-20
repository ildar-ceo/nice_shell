# обычные цвета
BLACK='\e[0;30m'        # black
RED='\e[0;31m'          # red
GREEN='\e[0;32m'        # green
YELLOW='\e[0;33m'       # yellow
BLUE='\e[0;34m'         # blue
PURPLE='\e[0;35m'       # purple
CYAN='\e[0;36m'         # cyan
WHITE='\e[0;37m'        # white

# жирные
BBLACK='\e[1;30m'       # black
BRED='\e[1;31m'         # red
BGREEN='\e[1;32m'       # green
BYELLOW='\e[1;33m'      # yellow
BBLUE='\e[1;34m'        # blue
BPURPLE='\e[1;35m'      # purple
BCYAN='\e[1;36m'        # cyan
BWHITE='\e[1;37m'       # white

# высоко интенсивные
IBLACK='\e[0;90m'       # black
IRED='\e[0;91m'         # red
IGREEN='\e[0;92m'       # green
IYELLOW='\e[0;93m'      # yellow
IBLUE='\e[0;94m'        # blue
IPURPLE='\e[0;95m'      # purple
ICYAN='\e[0;96m'        # cyan
IWHITE='\e[0;97m'       # white

# подчёркнутые
UBLACK='\e[4;30m'       # black
URED='\e[4;31m'         # red
UGREEN='\e[4;32m'       # green
UYELLOW='\e[4;33m'      # yellow
UBLUE='\e[4;34m'        # blue
UPURPLE='\e[4;35m'      # purple
UCYAN='\e[4;36m'        # cyan
UWHITE='\e[4;37m'       # white

# жирные высоко интенсивные
BIBLACK='\e[1;90m'      # black
BIRED='\e[1;91m'        # red
BIGREEN='\e[1;92m'      # green
BIYELLOW='\e[1;93m'     # yellow
BIBLUE='\e[1;94m'       # blue
BIPURPLE='\e[1;95m'     # purple
BICYAN='\e[1;96m'       # cyan
BIWHITE='\e[1;97m'      # white

# фоновые
ON_BLACK='\e[40m'       # black
ON_RED='\e[41m'         # red
ON_GREEN='\e[42m'       # green
ON_YELLOW='\e[43m'      # yellow
ON_BLUE='\e[44m'        # blue
ON_PURPLE='\e[45m'      # purple
ON_CYAN='\e[46m'        # cyan
ON_WHITE='\e[47m'       # white

# высоко интенсивные фоновые
ON_IBLACK='\e[0;100m'   # black
ON_IRED='\e[0;101m'     # red
ON_IGREEN='\e[0;102m'   # green
ON_IYELLOW='\e[0;103m'  # yellow
ON_IBLUE='\e[0;104m'    # blue
ON_IPURPLE='\e[0;105m'  # purple
ON_ICYAN='\e[0;106m'    # cyan
ON_IWHITE='\e[0;107m'   # white

NOCOLOR='\e[0m'          # No Color (нет цвета)


if [[ `whoami` = "root" ]]; then
        HILIT=${IRED} # prompt будет частично красным
else
        HILIT=${IBLUE} # prompt будет частично циановым
fi

HOSTNAME=`hostname`
PS1="\[${HILIT}\][\u@${HOSTNAME} \W]\\$ \[${NOCOLOR}\]"

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/sbin:/bin"
LANG="en_US.UTF-8"
#LANGUAGE="en_US:en"
export LANG
export LANGUAGE
export EDITOR=nano
export PATH
