// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "CruxSDK",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "CruxSDK", targets: ["CruxSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "CruxSDK",
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.2.5/CruxSDK-1.2.5.xcframework.zip",
            checksum: "565716358ccac02c00da6efba7262deb23f55b6a16a7410b9bc132a681448c82"
        )
    ]
)
