//
//  package.swift
//  libxcode
//
//  Created by Kiruthika Jeyashankar on 01/04/24.
//

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
