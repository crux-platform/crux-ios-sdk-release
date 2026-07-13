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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.6/CruxSDK-1.0.6.xcframework.zip",
            checksum: "ff35b06c76c5cae3b30e92102793ee679bd7a6225d4f7786ef931b190e9fd1a6"
        )
    ]
)
