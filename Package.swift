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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.12/CruxSDK-1.0.12.xcframework.zip",
            checksum: "1180fd0b9a23c1ec97067cd7cb8614f62c0e987171f07236d08c882ecbeb5917"
        )
    ]
)
