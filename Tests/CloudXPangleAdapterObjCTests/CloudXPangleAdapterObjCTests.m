@import CloudXPangleAdapter;
@import CloudXPangleAdapterPackage;
@import XCTest;

@interface CloudXPangleAdapterObjCTests : XCTestCase
@end

@implementation CloudXPangleAdapterObjCTests

- (void)testFrameworkIsLinked {
    XCTAssertEqualObjects(CLXPangleAdapterVersion, @"8.3.0.9.0");
    XCTAssertNotNil(NSClassFromString(@"CLXPangleInitializer"));
}

@end
