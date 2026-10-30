import CloudXPangleAdapter
import CloudXPangleAdapterPackage
import XCTest

final class CloudXPangleAdapterSwiftTests: XCTestCase {
    func testFrameworkIsLinked() {
        XCTAssertEqual(CLXPangleAdapterVersion, "8.3.0.9.0")
        XCTAssertNotNil(NSClassFromString("CLXPangleInitializer"))
    }
}
