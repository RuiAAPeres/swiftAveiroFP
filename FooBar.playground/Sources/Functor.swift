public  func <^> <T, U>(f: (T) -> U, x: ParsingResult<T>) -> ParsingResult<U> {
    return x.map(f)
}

public  extension ParsingResult {
    func map<U>(_ f: (T) -> U) -> ParsingResult<U> {
        switch (self) {
        case .success(let x): return .success(f(x))
        case .failure(let e): return .failure(e)
        }
    }
}
