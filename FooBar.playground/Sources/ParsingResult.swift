public  enum ParsingResult<T> {
    case success(T)
    case failure(String)

    public var value: T? {
        switch self {
        case .success(let v): return v
        case .failure: return nil
        }
    }

    public func toOptional() -> ParsingResult<T?> {
        switch self {
        case .success(let v): return .success(.some(v))
        case .failure: return .success(.none)
        }
    }
}
