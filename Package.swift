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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.3/CruxSDK-1.0.3.xcframework.zip",
            checksum: "a5cbb8ed1ddfd21509ff26fa68e5875b68a33a4f4e4b5ca4cc1fe516ef7acabe"
        )
    ]
)
