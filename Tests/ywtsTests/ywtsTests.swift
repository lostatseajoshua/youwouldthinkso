import XCTest
@testable import ywts

final class ywtsTests: XCTestCase {
    func testKeyValueReduce() {
        let array = [1, 2, 3]
        let dictionary = array.keyValueReduce {"\($0)"}
        let dictionary1 = array.keyValueReduce(["4": 4, "5": 5]) { "\($0)" }
        XCTAssertFalse(dictionary.isEmpty)
        XCTAssertEqual(dictionary["1"], 1)
        XCTAssertEqual(dictionary1["5"], 5)
        XCTAssertEqual(dictionary1["1"], 1)
    }

    static var allTests = [
        ("testKeyValueReduce", testKeyValueReduce),
    ]
}
