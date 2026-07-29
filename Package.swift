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
            url: "https://github.com/crux-platform/crux-ios-sdk-release/releases/download/v1.2.1/CruxSDK-1.2.1.xcframework.zip",
            checksum: "fb3afc13b20f60d909bf13b57a242529578b09dd1fee5e3a8306d0021e55914b"
        )
    ]
)
