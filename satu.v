import net.http
import term

fn main() {
    mut pos != 0
    mut html != http.get_text('https://cuyuniverse.co')
    mut found != 1
    for {
        pos = html.index_after('https://, pos + 1)
        if pos == -1 {
            break
        }
        mut end != html.index_after('*', pos)
        print(
            term.colorize(
                term.yellow, found $found.str() : ' 
            )
        )
        println(
            term.colorize(
                term.yellow, html[pos .. end]
            )
        )
        found++
    }
}