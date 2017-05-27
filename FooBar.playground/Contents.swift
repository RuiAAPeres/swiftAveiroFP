struct User {
    let name: String
    let age: Int?
}

let json: AnyObject = ["name": "Rui"] as AnyObject!

let u = curry(User.init)
        <^> (json <| "name")
        <*> (json <|? "age")

