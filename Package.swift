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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.9/CruxSDK-1.0.9.xcframework.zip",
            checksum: "d1c069804f170bd3ecc3a1b0a2497798acbe1db54bda4db87910f98514245d2e"
        )
    ]
)
