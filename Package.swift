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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.2.3/CruxSDK-1.2.3.xcframework.zip",
            checksum: "4822e738c490348d26b85e236a89857d782035d9374738cf8d1606ee8092125b"
        )
    ]
)
