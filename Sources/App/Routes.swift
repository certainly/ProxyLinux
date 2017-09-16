import Vapor

extension Droplet {
    func setupRoutes() throws {
//        get("hello") { req in
//            var json = JSON()
//            try json.set("hello", "world")
//            return json
//        }
//
//        get("plaintext") { req in
//            return "Hello, world!"
//        }
//
//        // response to requests to /info domain
//        // with a description of the request
//        get("info") { req in
//            return req.description
//        }
//
//        get("description") { req in return req.description }
        
        get("*") { req in
            print("heeeer")
            print("host: \(req.uri.description)")
            let xx: URI = req.uri
          
//            return "dfd"
            return  try self.client.get(req.uri.description)
            
        }
        
        
//        try resource("posts", PostController.self)
    }
}
