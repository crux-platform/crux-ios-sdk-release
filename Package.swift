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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.1/CruxSDK-1.0.1.xcframework.zip",
            checksum: "ba4a604511b277e42acde0cba9592bc06fb0d82409d8f57dbb694482ba75d963"
        )
    ]
)
