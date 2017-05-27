public func <*> <T, U>(f: ParsingResult<(T) -> U>, x: ParsingResult<T>) -> ParsingResult<U> {
    return x.apply(f)
}

extension ParsingResult {
     public func apply<U>(_ f: ParsingResult<(T) -> U>) -> ParsingResult<U> {
        switch (f, self) {
        case let (.success(f), _): return self.map(f)
        case let (.failure(x), .failure(y)): return .failure("\(x) \n \(y)")
        case let (.failure(x), _): return .failure(x)
        }
    }
}
