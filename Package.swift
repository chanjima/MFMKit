// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MFMKit",
    products: [
        .library(name: "MFMKit", targets: ["MFMKit"])
    ],
    targets: [
        .binaryTarget(name: "MFMKit", path: "MFMKit.xcframework")
    ]
)
