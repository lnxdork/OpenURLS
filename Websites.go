// The script assumes you are running Chrome.
// The script presents an options menu and opens browser tabs based on selection.
package main

import (
	"bufio"
	"fmt"
	"os/exec"
	"os"
  )

func launch(list ...string) {
	//chrome := "google-chrome"
	chrome := "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"

	for _,element := range list{
		cmd := exec.Command(chrome, "--chrome-frame", "%s", element)
		err := cmd.Start()
		if err != nil {
			println("Failed to start chrome:", err)
		}
	}
	return
}

func main() {
	valid := true
	for valid {

	//Tools sites
	tools := []string {
		"http://urlquery.net/",
		"https://urlscan.io/",
		"https://www.virustotal.com/",
		"https://www.hybrid-analysis.com/",
		"https://www.google.com/transparencyreport/safebrowsing/diagnostic/",
		"https://www.ssllabs.com/",
		"https://mxtoolbox.com/",
		"http://csi.websense.com/",
		"http://toolbar.netcraft.com/site_report"}

	// News related sites
	news := []string {
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
		"https://www.thecyberwire.com/current.html"}

	// Various Blogs
	blogs := []string {
		"https://www.j4vv4d.com/blog/",
		"https://krebsonsecurity.com/",
		"https://www.schneier.com/",
		"https://www.endgame.com/blog/",
		"https://blog.cyberint.com/",
		"https://blog.aquasec.com/",
		"https://blogs.gartner.com/blog/category/security/"}
	
	// clear the screen linux version
	c := exec.Command("clear")
	c.Stdout = os.Stdout
	c.Run()

	println("================ Infosec Menu ================")
	println("1: Press '1' for Tools.")
	println("2: Press '2' for News.")
	println("3: Press '3' for Blogs.")
	println("Q: Press 'Q' to quit.")
	println("")
	println("Please make a selection: ")
	reader := bufio.NewReader(os.Stdin)
	char, _, err := reader.ReadRune()

	if err != nil {
		fmt.Println(err)
	}

	switch char {
	case '1':
		c.Run()
		fmt.Println("You chose Tools.")
		launch(tools...)
	case '2':
		c.Run()
		fmt.Println("You chose News.")
		launch(news...)
	case '3':
		c.Run()
		fmt.Println("You chose Blogs")
		launch(blogs...)
	case 'q':
		valid = false
		break
	}
  }
}
