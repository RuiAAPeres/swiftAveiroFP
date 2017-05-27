public  enum ParsingResult<T> {
    case success(T)
    case failure(String)

    public var value: T? {
        switch self {
        case .success(let v): return v
        case .failure: return nil
        }
    }
}
