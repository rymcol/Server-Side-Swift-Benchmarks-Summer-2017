#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

let start1 = "<section id=\"content\"><div class=\"container\">"
let start2 = "<div class=\"row blog-post\"><div class=\"col-xs-12\"><h1>Test Post "
let start4 = "</h1><img src=\"/img/random/random-"
let start5 = ".jpg\" alt=\"Random Image "
let start6 = "\" class=\"alignleft feature-image img-responsive\" /><div class=\"content\">"
let start7 = "</div>"
let start8 = "</div></div</div></section>"

struct BlogPageHandler {
    
    func loadPageContent() -> String {
        
        var finalContent = start1
        
        let randomContent = ContentGenerator().generate()
        
        for _ in 1...5 {
            let index: Int = Int(arc4random_uniform(UInt32(randomContent.count)))
            let value = Array(randomContent.values)[index]
            let imageNumber = Int(arc4random_uniform(25) + 1)
            
            finalContent += start2
            finalContent += "\(index)"
            finalContent += start4
            finalContent += "\(imageNumber)"
            finalContent += start5
            finalContent += "\(imageNumber)"
            finalContent += start6
            finalContent += "\(value)"
            finalContent += start7
        }
        
        finalContent += start8
        
        return finalContent
    }
    
}

