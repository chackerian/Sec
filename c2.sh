# chackerian
# c2 - Command and Control - Amalgamation of various sec tools

#########################
#PTES           
#########################

# Pre Engagement
# Threat Modeling
# Vulnerability Analysis
# Exploitation
# Post Exploitation
# Reporting

#########################
#Tools          
#########################

# nmap
# hydra
# airmon-ng
# metasploit
# SET
# lynis
# BeEF
# WPScan
# Dark Comet
# crypting
# whois
# dig
# nslookup
# burpsuite
# owasp-zap
# wapiti
# sqlninja
# scapy
# aircrack
# nikto
# sqlninja
# nc
# SHODAN
# Google Dorks
# OpenVAS
# Nessus
# W3af
# netsparker
# sqlmap
# Acunetics
# ettercap
# nikto
# canvas 
# netsparker
# 

#########################
#Hosts           
#########################
function hosts {
echo
echo -e $COLOR_NONE "Enter first 3 octets of IP"
echo "Ex: root@kali:~#192.168.1"
echo 
read octet
for i in `seq 1 255`; do
	ping -c 1 $octet.$i | grep "bytes from" | cut -d " " -f4 | cut -d ":" -f1 &
done
}
#########################
Stress
#########################

function stress {
xterm perl slowloris.pl
}


#########################
#Main Menu
#########################
function mainmenu {
echo -e "
\033[0;32m
      A                     A
    .7Y      _________      7Y.
    7Y      / ___|___ \      7Y
   7Y      | |     __) |      7Y
   7Y      | |___ / __/       7Y
   \V/.     \____|_____|    .\V/
    v.-v.                 .v-.v
      x/_.===============._\x
     x-/                   \-x
\033[31m######################################\033[m
\033[m"
select menusel in "DNS" "whois" "nc" "stress" "RAT" "scan" "hosts" "S.E" "phone" "Exit";do
case $menusel in
	"DNS")
	clear ;;

	"whois")
	clear ;;

	"nc")
	clear ;;

	"stress")
	stress
	clear ;;

	"RAT")
	clear ;;

	"scan")
	clear ;;
	
	"hosts")
	hosts
	clear ;;

	"S.E.")
	clear ;;

	"phone")
	clear ;;

	"Exit")
	clear && exit 0 ;;
esac
break
done
}
mainmenu
while true; do mainmenu; done
