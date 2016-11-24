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
ff() { find . -type f -iname '*'$*'*' ; }

# Поиск строки в файле
fe() { grep -R '*'$*'*' ./ ; }


#-----------------------------------
# Функции для работы с процессами/системой:
#-----------------------------------

myip() # IP адрес
{
	MY_IP=$(/sbin/ifconfig | awk '/inet/ { print $2 } ' | sed -e s/addr://)
	echo $MY_IP
}

ii()   # Дополнительные сведения о системе
{
    MY_IP=$(/sbin/ifconfig | awk '/inet/ { print $2 } ' | sed -e s/addr://)

    echo -e "\n${IWHITE}Вы находитесь на ${HOSTNAME}${NOCOLOR}"
    echo -e "\n${IWHITE}Дополнительная информация:$NOCOLOR " ; uname -a
    echo -e "\n${IWHITE}В системе работают пользователи:$NOCOLOR " ; w -h
    echo -e "\n${IWHITE}Дата:$NOCOLOR " ; date
    echo -e "\n${IWHITE}Время, прошедшее с момента последней перезагрузки :$NOCOLOR " ; uptime
    echo -e "\n${IWHITE}Память :$NOCOLOR " ; free
    echo -e "\n${IWHITE}IP адрес:$NOCOLOR" ; echo ${MY_IP:-"Соединение не установлено"}
    echo
}
