// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libxcode",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "libxcode",
            targets: ["libxcode"])
    ],
    targets: [
        .binaryTarget(
            name: "libxcode",
            path: "libxcode.xcframework")
    ])
