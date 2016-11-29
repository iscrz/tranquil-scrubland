import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.get("/") { request in
    return "Hello World!"
}

drop.get("/name") { request in
    return "Hello World! 2"
}

drop.resource("posts", PostController())

drop.run()
