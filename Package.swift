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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.4/CruxSDK-1.0.4.xcframework.zip",
            checksum: "724ce03eddb7f36f5f915392da2ce92d05b09a1ec88b4faf8307b0146ac20974"
        )
    ]
)
