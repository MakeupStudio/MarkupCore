// swift-tools-version:5.3
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
        .target(name: "MarkupCore"),
        .testTarget(
            name: "MarkupCoreTests",
            dependencies: [
                .target(name: "MarkupCore")
            ]
        ),
    ]
)
