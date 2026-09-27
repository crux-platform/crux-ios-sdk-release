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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.2.4/CruxSDK-1.2.4.xcframework.zip",
            checksum: "2a2a9d01efcd8442f7dfddd7c88d7a5c5f38edffb0af518889d1c4b63f39a2b6"
        )
    ]
)
