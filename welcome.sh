#!/bin/sh

LGRAY="\033[1;6m\033[1;37m"
YELLOW="\033[1;6m\033[1;33m"
PURPLE="\033[1;6m\033[1;35m"
WHITE="\033[1;6m\033[1;37m"
COLOR_RESET="\033[0m"

# Let's simplify this a bit :)
UPTIME=`uptime | awk '{for ( i = 3; i <= NF-7; i++ ) if ( i != NF-7 ) \
        print $i; else print substr($i,1,length($i)-1);}'`

rm -f /etc/issue

echo -e $WHITE'                                                ' >> /etc/issue
echo -e $WHITE'__________ .___ ____  ______________.____     ________     _________' >> /etc/issue
echo -e $WHITE'\______   \|   |\   \/  /\_   _____/|    |    \_____  \   /   _____/' >> /etc/issue
echo -e $WHITE' |     ___/|   | \     /  |    __)_ |    |     /   |   \  \_____  \ ' >> /etc/issue
echo -e $WHITE' |    |    |   | /     \  |        \|    |___ /    |    \ /        \' >> /etc/issue
echo -e $WHITE' |____|    |___|/___/\  \/_______  /|_______ \\_______  //_______  /' >> /etc/issue
echo -e $WHITE'                      \_/        \/         \/        \/         \/ ' >> /etc/issue
echo -e $WHITE'                                                ' >> /etc/issue
echo -e $LGRAY'By TurboPlay Corporation' >> /etc/issue

echo -e $LGRAY'Hostname: '$(hostname -a) >> /etc/issue
echo -e $LGRAY'Kernel:   '$(uname -r)    >> /etc/issue
echo -e $LGRAY'Uptime:   '$UPTIME        >> /etc/issue
echo -e $WHITE'                                                ' >> /etc/issue
echo -e $YELLOW'UNAUTHORIZED USERS WILL BE LOGGED' >> /etc/issue
echo -e $WHITE'                                                ' >> /etc/issue
echo -e $LGRAY"\n$(date)" >> /etc/issue
echo -e $COLOR_RESET >> /etc/issue
cp -f /etc/issue /etc/issue.net



# https://forums.gentoo.org/viewtopic-t-2972-start-50.html
