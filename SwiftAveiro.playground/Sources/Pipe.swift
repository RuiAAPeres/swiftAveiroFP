precedencegroup PipePrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
}

infix operator |> : PipePrecedence
infix operator ?|> : PipePrecedence

public func |> <T, U>(x: T, f: (T) -> U) -> U {
    return f(x)
}

public func ?|> <T, U>(x: T?, f: (T) -> U) -> U? {
    guard let `x` = x else { return nil }
    return f(`x`)
}
