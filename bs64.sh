#!/bin/bash

menu()
{
    echo ""
    echo -e "\e[93m[01] Encode BASE64\e[0m"
    echo -e "\e[93m[02] Decode BASE64\e[0m"
    echo -e "\e[93m[00] Exit \e[0m"
    echo ""
}
close()
{
    clear
    exit
}

menu
read -p "Choose option: " choose

if [[ $choose == "01" || $choose == "1" ]];
then
clear
echo ""
read -p "Enter text to encode: " text
echo ""
echo $text | base64
elif [[ $choose == "02" || $choose == "2" ]];
then
clear
echo ""
read -p "Enter hash to encode: " hashes
echo ""
echo $hashes | base64 --decode
else 
echo -e "\e[1;97m Invalid Command!!! " 
fi
