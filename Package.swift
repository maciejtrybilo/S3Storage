// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "S3Storage",
    products: [
        .library(name: "S3Storage", targets: ["S3Storage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/maciejtrybilo/S3.git", .branch("vapor3")),
        .package(url: "https://github.com/maciejtrybilo/Storage.git", .branch("vapor3"))
    ],
    targets: [
        .target(name: "S3Storage", dependencies: ["Storage", "S3"]),
        .testTarget(name: "S3StorageTests", dependencies: ["S3Storage"]),
    ]
)
