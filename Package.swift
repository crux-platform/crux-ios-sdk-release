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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.2.2/CruxSDK-1.2.2.xcframework.zip",
            checksum: "715684e6a1c63a2876b19d0d56b26895cb5c580d1da2f96114b9ddf10b441130"
        )
    ]
)
