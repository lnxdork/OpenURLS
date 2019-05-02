#!/bin/bash

# The script assumes you are running Chrome.
# The script presents an options menu and opens browser tabs based on selection.

clear

# Tools sites
declare -a tools=(
    "http://urlquery.net/"
    "https://urlscan.io/"
    "https://www.virustotal.com/"
    "https://www.hybrid-analysis.com/"
    "https://www.google.com/transparencyreport/safebrowsing/diagnostic/"
    "https://www.ssllabs.com/"
    "https://mxtoolbox.com/"
    "http://csi.websense.com/"
    "http://toolbar.netcraft.com/site_report"
)


# News related sites
declare -a news=(
    "https://www.bellingcat.com/"
    "https://www.darkreading.com/"
    "https://nakedsecurity.sophos.com/"
    "https://infospectives.co.uk/"
    "https://www.scmagazine.com/"
    "http://www.itsecurityguru.org/"
    "https://www.wired.com/category/threatlevel/"
    "https://www.fifthdomain.com/?source=dfn-nav"
    "https://isc.sans.edu/"
    "https://hackernoon.com/"
    "https://www.thecyberwire.com/current.html"
)


# Various Blogs
declare -a blogs=(
    "https://www.j4vv4d.com/blog/"
    "https://krebsonsecurity.com/"
    "https://www.schneier.com/"
    "https://www.endgame.com/blog/"
    "https://blog.cyberint.com/"
    "https://blog.aquasec.com/"
    "https://blogs.gartner.com/blog/category/security/"
)


function pause(){
   read -p "$*"
   Menu
}


function OpenTabs(){
    launch="google-chrome ${LISTY[@]}"
    $launch 2>/dev/null &
}


function Menu(){
TITLE='Infosec Menu'
clear
echo "================ $TITLE ================"
echo "Press '1' for Tools."
echo "Press '2' for News."
echo "Press '3' for Blogs."
echo "Press 'Q' to quit."
echo "Please make a selection: "
read selection

case $selection in
    [1])
        clear
        echo "You chose Tools."
        LISTY=${tools[@]}
        OpenTabs
        pause 'Press [Enter] key to continue...'
        ;;
    [2])
        clear
        echo "You chose News."
        LISTY=${news[@]}
        OpenTabs
        pause 'Press [Enter] key to continue...'
        ;;
    [3])
        clear
        echo "You chose Blogs."
        LISTY=${blogs[@]}
        OpenTabs
        pause 'Press [Enter] key to continue...'
        ;;
    [q])
        ;;
    *)
        echo "Quitting."
        ;;
esac
}
Menu
