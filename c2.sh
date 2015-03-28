# chackerian
# c2 - Command and Control - Amalgamation of various sec tools
# Tools that will be included
# 
#
#
BOLD=`tput bold`
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
select menusel in "Recon" "DDoS" "RAT" "Scan";do
case $menusel in
	"Recon")
	clear ;;

	"Stress")
	clear ;;

	"RAT")
	clear ;;

	"Scan")
	clear ;;

	"Exit")
	clear && exit 0 ;;
esac
break
done
}
mainmenu
while true; do mainmenu; done
