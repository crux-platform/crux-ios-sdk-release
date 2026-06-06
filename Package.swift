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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.0/CruxSDK-1.0.0.xcframework.zip",
            checksum: "c59103dbd64ee274ca51e58ea19a85037909bd7d0f250beb2d5e6468273f3b13"
        )
    ]
)
