public typealias JSON = AnyObject

public protocol Mappable {
    func decode(_ json: JSON) -> ParsingResult<Self>
}

public func <| <T>(json: JSON, key: String) -> ParsingResult<T> {
    guard
        let d = json as? [String: AnyObject],
        let o = d[key] as? T
        else {
            return .failure("Couldn't extract value from \(json) using key \"\(key)\"")
    }
    return .success(o)
}

public func <|? <T>(json: JSON, key: String) -> ParsingResult<T?> {
    return (json <| key).toOptional()
}
