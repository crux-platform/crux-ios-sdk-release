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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.8/CruxSDK-1.0.8.xcframework.zip",
            checksum: "4ef507f0329da2911f2b3a03b713ea6ebd69aa71557002467329140a8e521acb"
        )
    ]
)
