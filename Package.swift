// swift-tools-version:5.1
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
