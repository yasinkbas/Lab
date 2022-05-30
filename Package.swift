// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Lab",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_11)
    ],
    products: [
        .library(
            name: "Lab",
            targets: ["Lab"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Lab",
            dependencies: []),
        .testTarget(
            name: "LabTests",
            dependencies: ["Lab"]),
    ]
)
