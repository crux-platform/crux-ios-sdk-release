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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.2/CruxSDK-1.0.2.xcframework.zip",
            checksum: "a3d5dae7e0787dd4739d0414ac1b97152ba0e5434b48fc88eca207ab7d957bb2"
        )
    ]
)
