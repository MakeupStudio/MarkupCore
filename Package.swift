// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "MarkupCore",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
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
