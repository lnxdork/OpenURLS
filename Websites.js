// The script assumes you are running a default browser.
// The script presents an options menu and opens browser tabs based on selection.
var opn = require('open');
var menu = require('node-menu');

// Tools sites
var tools = 
["http://urlquery.net/",
"https://urlscan.io/",
"https://www.virustotal.com/",
"https://www.hybrid-analysis.com/",
"https://www.google.com/transparencyreport/safebrowsing/diagnostic/",
"https://www.ssllabs.com/",
"https://mxtoolbox.com/",
"http://csi.websense.com/",
"http://toolbar.netcraft.com/site_report"]

// News related sites
var news = 
["https://www.bellingcat.com/",
"https://www.darkreading.com/",
"https://nakedsecurity.sophos.com/",
"https://infospectives.co.uk/",
"https://www.scmagazine.com/",
"http://www.itsecurityguru.org/",
"https://www.wired.com/category/threatlevel/",
"https://www.fifthdomain.com/?source=dfn-nav",
"https://isc.sans.edu/",
"https://hackernoon.com/",
"https://www.thecyberwire.com/current.html"]

// Various Blogs
var blogs = 
["https://www.j4vv4d.com/blog/",
"https://krebsonsecurity.com/",
"https://www.schneier.com/",
"https://www.endgame.com/blog/",
"https://blog.cyberint.com/",
"https://blog.aquasec.com/",
"https://blogs.gartner.com/blog/category/security/"]

function OpenTabs(list) {
    list.forEach(function(item, index, array) {
        opn(item);
      });
    }

var ShowMenu = function() {
    menu.addDelimiter('=', 32, 'Infosec Menu')
        .addItem(     
            'Press 1 for Tools.',
            function() {
                console.log('You chose Tools.');
                var list = tools
                OpenTabs(tools)
            })
        .addItem(     
            'Press 2 for News.',
            function() {
                console.log('You chose News.');
                var list = news
                OpenTabs(news)
            })
        .addItem(             
            'Press 3 for Blogs.',
            function() {
                console.log('You chose Blogs.');
                var list = blogs
                OpenTabs(blogs)
            })
        .customPrompt(function() { 
                process.stdout.write("\nPlease make a selection: "); 
            }) 
        .disableDefaultHeader()
        .start()
}

ShowMenu()



