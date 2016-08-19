#-------------------
# Псевдонимы
#-------------------

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

# Различные варианты 'ls' (предполагается, что установлена GNU-версия ls)
alias ls='ls --color=auto'
alias la='ls -lAXh --color=auto' # выделить различные типы файлов цветом
alias grep='grep --color=auto'

#-----------------------------------
# Функции для работы с файлами и строками:
#-----------------------------------

# Поиск файла по шаблону:
function ff() { find . -type f -iname '*'$*'*' ; }

# Поиск строки в файле
function fe() { grep -R '*'$*'*' ./ ; }


#-----------------------------------
# Функции для работы с процессами/системой:
#-----------------------------------

function myip() # IP адрес
{
	MY_IP=$(/sbin/ifconfig | awk '/inet/ { print $2 } ' | sed -e s/addr://)
	echo $MY_IP
}

function ii()   # Дополнительные сведения о системе
{
    MY_IP=$(/sbin/ifconfig | awk '/inet/ { print $2 } ' | sed -e s/addr://)

    echo -e "\n${IWhite}Вы находитесь на ${HOSTNAME}${NC}"
    echo -e "\n${IWhite}Дополнительная информация:$NC " ; uname -a
    echo -e "\n${IWhite}В системе работают пользователи:$NC " ; w -h
    echo -e "\n${IWhite}Дата:$NC " ; date
    echo -e "\n${IWhite}Время, прошедшее с момента последней перезагрузки :$NC " ; uptime
    echo -e "\n${IWhite}Память :$NC " ; free
    echo -e "\n${IWhite}IP адрес:$NC" ; echo ${MY_IP:-"Соединение не установлено"}
    echo
}
