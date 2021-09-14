// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Proba",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "Proba",
            targets: ["Proba"]
        ),
    ],
    targets: [
        .target(
            name: "Proba",
            path: "Proba"
        ),
    ]
)
