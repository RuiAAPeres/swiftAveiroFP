struct User {
    let name: String
    let age: [Int]
}

extension User: Mappable {
    static func decode(_ json: JSON) -> ParsingResult<User> {
        return curry(User.init)
            <^> (json <| "name")
            <*> (json <| "age")
    }
}

let json: AnyObject = ["name": "Rui", "age": [1, 2, 3]] as AnyObject!

let u = User.decode(json)
