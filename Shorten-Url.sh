#!/bin/bash/

##


url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

clear
cd $PWD
lolcat box.cow 

echo -e "\e[35m CREATED BY ARTURO (GITHUB)https://github.com/Arturo254 "
sleep 2
echo -e "\e[1;37m                                              "
echo -e "\e[1;37m ingresa la url a continuacion: "
echo -en "\e[32m=>\e[0m " 
read phish
url_checker $phish
sleep 1

echo "Processing and Modifing Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m <Disguising your link : >\e[0m"
echo 'PHISHING TOOL BY ARTURO (with http or https), ex: https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
if [[ -z "$words" ]]; then
echo -e "\e[31m[!] No words.\e[0m"
echo -e "\nGenerating  Phishing  Link...\n"
final=$mask@$shorter
echo -e "Here is the Phishing URL:\e[32m ${final} \e[0m\n"
exit
fi
if [[ "$words" =~ " " ]]; then
echo -e "\e[31m[!] Invalid words. Please avoid space.\e[0m"
echo -e "\nGenerating MaskPhish Link...\n"
final=$mask@$shorter
echo -e "Here is the Phishing URL:\e[32m ${final} \e[0m\n"
exit
fi
echo -e "\nGenerating Phishing  Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the Phishing  URL:\e[32m ${final} \e[0m\n"
