using System;
using System.Diagnostics;
using System.Collections.Generic;

namespace Websites
{
    class Websites
    {
        static void Main(string[] args)
        {
            var tools = new List<string> { 
            "http://urlquery.net/",
            "https://urlscan.io/",
            "https://www.virustotal.com/",
            "https://www.hybrid-analysis.com/",
            "https://www.google.com/transparencyreport/safebrowsing/diagnostic/",
            "https://www.ssllabs.com/",
            "https://mxtoolbox.com/",
            "http://csi.websense.com/",
            "http://toolbar.netcraft.com/site_report"
            };

            var news = new List<string> {
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
            };

	        var blogs = new List<string> {
		    "https://www.j4vv4d.com/blog/",
	    	"https://krebsonsecurity.com/",
	    	"https://www.schneier.com/",
	    	"https://www.endgame.com/blog/",
	    	"https://blog.cyberint.com/",
	    	"https://blog.aquasec.com/",
            "https://blogs.gartner.com/blog/category/security/"
            };

            // Asking the questions..
            Console.WriteLine("\n================ Infosec Menu ================");
            Console.WriteLine("1: Press '1' for Tools.");
            Console.WriteLine("2: Press '2' for News.");
            Console.WriteLine("3: Press '3' for Blogs.");
            Console.WriteLine("99: Press '99' to quit.");
            Console.WriteLine("");
            Console.WriteLine("Please make a selection: ");
            string name = Console.ReadLine();
            int n = Convert.ToInt32(name);

        
            switch (n)
                {
                case 1:
                    Console.WriteLine("You chose Tools.");
                    launch(tools);
                    break;
                case 2:
                    Console.WriteLine("You chose News.");
                    launch(news);
                    break;
                case 3:
                    Console.WriteLine("You chose Blogs.");
                    launch(blogs);
                    break;
                case 99:
                    Console.WriteLine("Quitting.");
                    break;
                default:
                    Console.WriteLine("Invalid Choice.");
                    break;
                }
        }

        static void launch(List<string> listx)
        {
            String target = "C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe";

            foreach (var site in listx)
            {
                try
                {
                    //Console.WriteLine("\nTrying to launch.");
                    Process.Start(target, site);
                }
                catch(System.ComponentModel.Win32Exception noBrowser)
                {
                    if (noBrowser.ErrorCode==-2147467259)
                    Console.WriteLine(noBrowser.Message);
                }
                catch(System.Exception other)
                {
                    Console.WriteLine(other.Message);
                }
            }
        }

    }
}
