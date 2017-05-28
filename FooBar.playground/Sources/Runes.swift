// From here: https://github.com/thoughtbot/runes

precedencegroup RunesApplicativePrecedence {
    associativity: left
    higherThan: LogicalConjunctionPrecedence
    lowerThan: NilCoalescingPrecedence
}

precedencegroup FooBarDecodePrecedence {
    associativity: left
    higherThan: RunesApplicativePrecedence
    lowerThan: NilCoalescingPrecedence
}

infix operator <^> : RunesApplicativePrecedence
infix operator <*> : RunesApplicativePrecedence
infix operator <| : FooBarDecodePrecedence
infix operator <|? : FooBarDecodePrecedence
infix operator <|| : FooBarDecodePrecedence
