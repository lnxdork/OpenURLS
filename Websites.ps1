# The script assumes you are running Chrome.
# The script presents an options menu and opens browser tabs based on selection.
# To run on Linux, get PowerShell from here: https://github.com/PowerShell/PowerShell
# The command to launch PowerShell on Linux is: pwsh

# Tools sites
$tools = 
@("http://urlquery.net/",
"https://urlscan.io/",
"https://www.virustotal.com/",
"https://www.hybrid-analysis.com/",
"https://www.google.com/transparencyreport/safebrowsing/diagnostic/",
"https://www.ssllabs.com/",
"https://mxtoolbox.com/",
"http://csi.websense.com/",
"http://toolbar.netcraft.com/site_report")

# News related sites
$news = 
@("https://www.bellingcat.com/",
"https://www.darkreading.com/",
"https://nakedsecurity.sophos.com/",
"https://infospectives.co.uk/",
"https://www.scmagazine.com/",
"http://www.itsecurityguru.org/",
"https://www.wired.com/category/threatlevel/",
"https://www.fifthdomain.com/?source=dfn-nav",
"https://isc.sans.edu/",
"https://hackernoon.com/",
"https://www.thecyberwire.com/current.html")

# Various Blogs
$blogs = 
@("https://www.j4vv4d.com/blog/",
"https://krebsonsecurity.com/",
"https://www.schneier.com/",
"https://www.endgame.com/blog/",
"https://blog.cyberint.com/",
"https://blog.aquasec.com/",
"https://blogs.gartner.com/blog/category/security/")

function Show-Menu
{
     param (
           [string]$Title = 'Infosec Menu'
     )
     cls
     Write-Host "================ $Title ================"
     
     Write-Host "1: Press '1' for Tools."
     Write-Host "2: Press '2' for News."
     Write-Host "3: Press '3' for Blogs."
     Write-Host "Q: Press 'Q' to quit."
}
function Open-Tabs
{
    foreach ($i in $list) {
        If ($PSVersionTable.Platform.Contains('nix')) { #checks the OS Platform
            [System.Diagnostics.Process]::Start("google-chrome",$i)
        }
        else {
            [System.Diagnostics.Process]::Start("chrome.exe",$i)
        }
    }
}

do
{
     Show-Menu
     $input = Read-Host "Please make a selection"
     switch ($input)
     {
           '1' {
                cls
                Write-Host 'You chose Tools.'
                $list = $tools
                Open-Tabs
           } '2' {
                cls
                Write-Host 'You chose News.'
                $list = $news
                Open-Tabs
           } '3' {
                cls
                Write-Host 'You chose Blogs.'
                $list = $blogs
                Open-Tabs
           } 'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q')
