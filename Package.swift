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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.7/CruxSDK-1.0.7.xcframework.zip",
            checksum: "0eae0b54d3a98fa29d9a2d64cc4411fd50cb52cad9c789fcdb7b6e36f488b56b"
        )
    ]
)
