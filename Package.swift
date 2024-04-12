// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoggingOSLog",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .tvOS(.v14),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "LoggingOSLog",
            targets: ["LoggingOSLog"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "LoggingOSLog",
            dependencies: [
                .product(name: "Logging", package: "swift-log")
            ]
        )
    ]
)
