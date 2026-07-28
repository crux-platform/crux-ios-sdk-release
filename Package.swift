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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.13/CruxSDK-1.0.13.xcframework.zip",
            checksum: "c3dbee92339eca777bc6ef4919df1291add3a6f26d85f0dc0eb9ea1b573beb87"
        )
    ]
)
