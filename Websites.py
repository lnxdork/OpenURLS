#!/usr/bin/env python

''' The script assumes you are running Chrome.
    The script presents an options menu and opens browser tabs based on selection.'''

import os
import webbrowser

def cls():
    os.system('cls' if os.name=='nt' else 'clear')

# clear the screen
cls()

# Tools sites
TOOLS = [
    "http://urlquery.net/",
    "https://urlscan.io/",
    "https://www.virustotal.com/",
    "https://www.hybrid-analysis.com/",
    "https://www.google.com/transparencyreport/safebrowsing/diagnostic/",
    "https://www.ssllabs.com/",
    "https://mxtoolbox.com/",
    "http://csi.websense.com/",
    "http://toolbar.netcraft.com/site_report"
    ]


# News related sites
NEWS = [
    "https://www.bellingcat.com/",
    "https://www.darkreading.com/",
    "https://nakedsecurity.sophos.com/",
    "https://infospectives.co.uk/",
    "https://www.scmagazine.com/",
    "http://www.itsecurityguru.org/",
    "https://www.wired.com/category/threatlevel/",
    "https://www.fifthdomain.com/?source=dfn-nav",
    "https://isc.sans.edu/",
    "https://hackernoon.com/",
    "https://www.thecyberwire.com/current.html"
    ]


# Various Blogs
BLOGS = [
    "https://www.j4vv4d.com/blog/",
    "https://krebsonsecurity.com/",
    "https://www.schneier.com/",
    "https://www.endgame.com/blog/",
    "https://blog.cyberint.com/",
    "https://blog.aquasec.com/",
    "https://blogs.gartner.com/blog/category/security/"
    ]


def OpenTabs():
    '''Open the browser tabs'''
    for i in LISTY:
        webbrowser.open_new_tab(i)


MENU = {}
TITLE = 'Infosec Menu'

cls()
MENU[''] = "================ "+ TITLE +" ================"
MENU['1'] = "Press '1' for Tools."
MENU['2'] = "Press '2' for News."
MENU['3'] = "Press '3' for Blogs."
MENU['Q'] = "Press 'Q' to quit."
while True:
    OPTIONS = MENU.keys()
    OPTIONS.sort()
    for entry in OPTIONS:
        print entry, MENU[entry]

    SELECTION = raw_input("Please make a selection: ")
    if SELECTION == "1":
        cls()
        print "You chose Tools."
        LISTY = TOOLS
        OpenTabs()
    elif SELECTION == '2':
        cls()
        print "You chose News."
        LISTY = NEWS
        OpenTabs()
    elif SELECTION == '3':
        cls()
        print "You chose Blogs."
        LISTY = BLOGS
        OpenTabs()
    elif SELECTION == 'q':
        break
    else:
        print "Invalid option."
