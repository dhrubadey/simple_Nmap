#! /bin/bash
echo -e "\e[1;36m/***************/ \e[0m"
echo -e "\e[1;36m/* Simple_Nmap */ \e[0m"
echo -e "\e[1;36m/***************/ \e[0m"

echo -e  "\e[1;33mThis is a simple bash script to make usage of Nmap easier \e[0m"
echo -e "\e[1;33mThis script has been coded by Dhrubajyoti Dey \e[0m"
echo -e "\e[1;33mPlease use against target that you own or have permission to \e[0m"
read -p "Please enter the IP Address of the target: " ip
echo -e "\e[1;33mPlesae choose what you want to perform: \e[0m"
echo -e "\e[1;33m1. Simple port scan(Verbose) \e[0m"
echo -e "\e[1;33m2. OS detection(verbose) \e[0m"
echo -e "\e[1;33m3. Stealth Scan(verbose) \e[0m"
echo -e "\e[1;33m4. ping scan(verbose) \e[0m"
echo -e "\e[1;33m5. TCP SYN ping(verbose) \e[0m"
echo -e "\e[1;33m6. Aggressive scan(verbose) \e[0m"
echo -e "\e[1;33m7. Traceroute(Verbose) \e[0m"
echo -e "\e[1;33m8. ARP ping(verbose) \e[0m"
echo -e "\e[1;33m9. ICMP echo ping(verbose) \e[0m"
read -p "Enter your choice: " ch
echo -e "\e[1;33m1. Save the output to a text file \e[0m"
echo -e "\e[1;33m2. Continue in the terminal \e[0m"

read -p "Enter your opinion: " save
if [ $save == 1 ]
then
read -p "Please specify the full path along with the file name(add .txt at the end of file name)" path
if [ $ch == 1 ]
then
nmap -vv $ip > $path
elif [ $ch == 2 ]
then
nmap -vv -O $ip > $path
elif [ $ch == 3 ]
then
nmap -vv -sS $ip > $path
elif [ $ch == 4 ]
then
nmap -vv -sn $ip > $path
elif [ $ch == 5 ]
then
nmap -vv -PS $ip > $path
elif [ $ch == 6 ]
then
nmap -vv -A $ip >$path
elif [ $ch == 7 ]
then
nmap -vv -traceroute $ip > $path
elif [ $ch == 8 ]
then
nmap -vv -PR $ip > $path
elif [ $ch == 9 ]
then
nmap -vv -PE $ip > $path
fi
echo -e "\e[1;33mAll the output has been saved to: $path \e[0m"
elif [ $save == 2 ]
then
if [ $ch == 1 ]
then
nmap -vv $ip
elif [ $ch == 2 ]
then
nmap -vv -O $ip
elif [ $ch == 3 ]
then
nmap -vv -sS $ip
elif [ $ch == 4 ]
then
nmap -vv -sP $ip
elif [ $ch == 5 ]
then
nmap -vv -PS $ip
elif [ $ch == 6 ]
then
nmap -vv -A $ip
elif [ $ch == 7 ]
then
nmap -vv -traceroute $ip
elif [ $ch == 8 ]
then
nmap -vv -PR $ip
elif [ $ch == 9 ]
then
nmap -vv -PE $ip
fi
else
echo -e "\e[1;31mPlease enter correct option! \e[0m"
fi
echo -e "\e[1;33mTo run another scan please run this script again \e[0m"
echo -e "\e[1;33mThank you for using this script \e[0m"
