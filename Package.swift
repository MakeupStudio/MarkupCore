// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MarkupCore",
    products: [
        .library(
            name: "MarkupCore",
            targets: ["MarkupCore"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MarkupCore",
            dependencies: []),
        .testTarget(
            name: "MarkupCoreTests",
            dependencies: ["MarkupCore"]),
    ]
)
