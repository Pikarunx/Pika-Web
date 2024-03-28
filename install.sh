
#----colors----
red='\033[1;91m'
green='\033[1;92m'
cyan='\033[1;96m'
yellow='\033[1;93m'


echo ""
echo ""
echo "$yellow Kurulum Başlıyor....."
sleep 2
clear
sleep 0.2
echo ""
echo ""
echo "$green coded by @pikarun"
echo ""
sleep 1


if [ -f /data/data/com.termux/files/usr/bin/python ];
then 
    sleep 1
    echo "$green[✔]:[ python ]: $cyan Bulundu !" 
else
    echo "$green[x]:[ python ]: $red Bulunamadı  ! "
    echo ""
    sleep 1 
    echo "$yellow  python Yükleniyor....."
    sleep 1
    apt install python
fi

echo ""

if [ -f /data/data/com.termux/files/usr/bin/python2 ];
then
    sleep 1
    echo "$green[✔]:[ python2 ]: $cyan Bulundu !"
else 
    echo "$green[x]:[ python2 ]: $red Bulunamadı ! "
    echo "" 
    sleep 1 
    echo "$yellow  python2 Yükleniyor....." 
    sleep 1 
    apt install python2
fi

echo ""

if [ -f /data/data/com.termux/files/usr/bin/nmap ];
then
    sleep 1
    echo "$green[✔]:[ Nmap ]: $cyan Bulundu !"
else 
    echo "$green[x]:[ Nmap ]: $red Bulunamadı ! " 
    echo "" 
    sleep 1 
    echo "$yellow  Nmap Yükleniyor....." 
    sleep 1 
    apt install nmap
fi

echo ""
sleep 1
echo "$green  requirements Yükleniyor...."
sleep 0.9
pip install requests
pip2 install requests
pip install colorama
pip2 install colorama
pip install os
pip2 install os
pip install googlesearch
pip2 install googlesearch
pip install time
pip2 install time
pip install whois
pip2 install whois
pip install socket
pip2 install socket


echo ""
sleep 1
echo "Kurulum Tamamlandı"
echo ""
sleep 1
echo "$cyan python main.py"
echo ""
echo "-----------------------------------------"
sleep 0.5
echo ""
ls
echo ""
