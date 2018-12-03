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

    func testSafeCollectionAccess() {
        let array = [1, 2, 3]
        XCTAssertEqual(array[try: 0], 1)
        XCTAssertEqual(array[safe: 0], 1)
        XCTAssertEqual(array[at: 0], 1)
        XCTAssertEqual(array.element(at: 0), 1)
        XCTAssertNil(array[try: 100])
        XCTAssertNil(array[safe: 100])
        XCTAssertNil(array[at: 100])
        XCTAssertNil(array.element(at: 100))
    }

    static var allTests = [
        ("testKeyValueReduce", testKeyValueReduce),
        ("testSafeCollectionAccess", testSafeCollectionAccess),
    ]
}
