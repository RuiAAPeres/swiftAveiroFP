import Foundation

func calculator(_ x: String) -> Double? {
    return x |> split |> calculate |> first
}

private func first(_ xs: [Double]) -> Double? {
    return xs.first
}

private func split(_ x: String) -> [String] {
    return x.components(separatedBy: " ")
}

private func calculate(xs: [String]) -> [Double] {
    return xs.reduce([], calculate)
}

private func calculate(_ xs: [Double], _ x: String) -> [Double] {
    switch x {
    case "+" :
        return [xs[0] + xs[1]] + xs[2...xs.count-1]
    case "-" :
        return [xs[0] - xs[1]] + xs[2...xs.count-1]
    case "*" :
        return [xs[0] * xs[1]] + xs[2...xs.count-1]
    default:
       return xs + [Double(x)!]
    }
}
