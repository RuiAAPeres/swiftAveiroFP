// from here: https://github.com/sshrpe/TDDSwiftPlayground/blob/master/TDD%20In%20Swift%20Playgrounds%20-%20iOS.playground/Sources/TestRunner.swift

import Foundation
import XCTest

public struct TestRunner {
    public init() { }

    public func runTests(testClass:AnyClass) {
        let tests = testClass as! XCTestCase.Type
        let testSuite = tests.defaultTestSuite()
        testSuite.run()
        _ = testSuite.testRun as! XCTestSuiteRun
    }
}
