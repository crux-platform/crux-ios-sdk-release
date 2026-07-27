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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.11/CruxSDK-1.0.11.xcframework.zip",
            checksum: "d81ca76ec7c028e8154ab36a83039af5cf0e3cb585b8ccddf64208cab02452b6"
        )
    ]
)
