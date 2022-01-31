import XCTest
@testable import Core

final class ServiceTests: XCTestCase {
    func test_zero() {
        // We need this to start with and see that the tests work
        XCTFail()
    }

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    static var allTests = [
        ("test_zero", test_zero)
    ]
}
