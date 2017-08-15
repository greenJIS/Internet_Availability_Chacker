#!/bin/bash
red='\033[0;31m'
green='\033[0;32m'
printf "\t"
if [ "$1" ==  "d" ]
then
	ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo -ne "${green}Internet Connection Present\t" || echo -ne "${red}No Internet Connection\t"
	cat ./.speedtestscriptDOWNLOAD | python - | grep Download
elif [ "$1" ==  "u" ]
then
	ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo -ne "${green}Internet Connection Present\t" || echo -ne "${red}No Internet Connection\t"
	cat ./.speedtestscriptUPLOAD | python - | grep Upload
else
	ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo -e "${green}Internet Connection Present" || echo -e "${red}No Internet Connection"
fi
