import Vapor

extension Droplet {
    func setupRoutes() throws {
        get("json") { req in
            var json = JSON()
            for (element, number) in JSONCreator().generateJSON() {
                try json.set(element, number)
            }
            return json
        }
        
        get("blog") {
            req in
            
            let header = CommonHandler().getHeader()
            let footer = CommonHandler().getFooter()
            let body = BlogPageHandler().loadPageContent()
            let blogPage = header + body + footer
            
            return Response(status: .ok, body: blogPage)
        }
        
        get { req in
            let header = CommonHandler().getHeader()
            let footer = CommonHandler().getFooter()
            let body = IndexHandler().loadPageContent()
            let indexPage = header + body + footer
            
            return Response(status: .ok, body: indexPage)
        }
    }
}
