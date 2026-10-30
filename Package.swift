// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXPangleAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXPangleAdapter",
            targets: ["CloudXPangleAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/bytedance/AdsGlobalPackage.git",
            exact: "8.3.0-release.9"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXPangleAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-pangle/releases/download/binary/8030009.0.0/CloudXPangleAdapter.xcframework.zip",
            checksum: "df544d94f98539baf7de8a75daafd9e029c4b53e885e05c786772ea6ccc804ee"
        ),
        .target(
            name: "CloudXPangleAdapterPackage",
            dependencies: [
                "CloudXPangleAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "AdsGlobalPackage", package: "adsglobalpackage"),
            ]
        ),
        .testTarget(
            name: "CloudXPangleAdapterSwiftTests",
            dependencies: ["CloudXPangleAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXPangleAdapterObjCTests",
            dependencies: ["CloudXPangleAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
