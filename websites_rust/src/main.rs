#[macro_use] extern crate text_io;

fn main() {
extern crate open;

fn menu() {
print!("{}[2J", 27 as char);
println!("================ Infosec Menu ================");
println!("1: Press '1' for Tools.");
println!("2: Press '2' for News.");
println!("3: Press '3' for Blogs.");
println!("q: Press 'q' to quit.");
println!("");
println!("Please make a selection: ");

let i: String = read!();
let a = i.to_string();

match a.as_ref() {
    "1" => {
        println!("You chose Tools.");
            tools();
            }
    "2" => {
        println!("You chose News.");
            news();
            }
    "3" => {
        println!("You chose Blogs.");
            blogs();
            }
    "q" => println!("Quitting!"),
    _ => {
        println!("Something else!");
            menu();
            }
    }
}


fn tools() {
    //Tools sites
	let tools = [
		"http://urlquery.net/",
		"https://urlscan.io/",
		"https://www.virustotal.com/",
		"https://www.hybrid-analysis.com/",
		"https://www.google.com/transparencyreport/safebrowsing/diagnostic/",
		"https://www.ssllabs.com/",
		"https://mxtoolbox.com/",
		"http://csi.websense.com/",
		"http://toolbar.netcraft.com/site_report"];
	
    	for url in tools.iter() {
        open::that(url);
		}
        menu()
}

fn news() {
	// News related sites
	let news = [
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
		"https://www.thecyberwire.com/current.html"];
        	
    	for url in news.iter() {
        open::that(url);
		}
        menu()
}


fn blogs() {
    	// Various Blogs
	let blogs = [
		"https://www.j4vv4d.com/blog/",
		"https://krebsonsecurity.com/",
		"https://www.schneier.com/",
		"https://www.endgame.com/blog/",
		"https://blog.cyberint.com/",
		"https://blog.aquasec.com/",
		"https://blogs.gartner.com/blog/category/security/"];
        
        for url in blogs.iter() {
        open::that(url);
		}
        menu()
}


menu()
}