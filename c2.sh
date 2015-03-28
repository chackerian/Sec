# chackerian
# c2 - Command and Control - Amalgamation of various sec tools
# Tools that will be included
# 
#
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
select menusel in "Recon" "Stress" "RAT" "Scan" "Hosts" "Exit";do
case $menusel in
	"Recon")
	clear ;;

	"Stress")
	stress
	clear ;;

	"RAT")
	clear ;;

	"Scan")
	clear ;;
	
	"Hosts")
	hosts
	clear ;;

	"Exit")
	clear && exit 0 ;;
esac
break
done
}
mainmenu
while true; do mainmenu; done
