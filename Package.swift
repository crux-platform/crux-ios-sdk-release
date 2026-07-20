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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.10/CruxSDK-1.0.10.xcframework.zip",
            checksum: "86dd4f05e5c5005ccef805a7d748029ea32e6b2e919fd1a9a98e156bd727c400"
        )
    ]
)
