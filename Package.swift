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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.0.5/CruxSDK-1.0.5.xcframework.zip",
            checksum: "9f1d03156860d1eb45397c080b012d1313f1e788696fd83922aceb3dc91e0be3"
        )
    ]
)
