// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AuthMeSPM",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AuthMeSPM",
            targets: [
                "AuthMeSPM",
                "AuthMe",
                "AuthMeUI",
                "Algo",
                "AuthmeNFCKit",
                "OpenSSL"
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.4.0")
    ],
    targets: [
        .target(
            name: "AuthMeSPM",
            dependencies: [.productItem(name: "Lottie", package: "lottie-spm")]),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.1/AuthMe.xcframework.zip",
            checksum: "7eb9f1400d0a9425eb46e15507b8d188c8e86ea43d4cef0900d14a71c1c9e1ff"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.1/AuthMeUI.xcframework.zip",
            checksum: "981ff8bb772c2ca4944d42ac74727459a573b19645f76edaf23e531a3f7b8f8d"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.6/Algo.xcframework.zip",
            checksum: "42826fae96d33473279e3c8e9d63c53ee15a1cbb105387b3c7f439b601d8ebca"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.1/AuthmeNFCKit.xcframework.zip",
            checksum: "ddc1c6042625238c0bece5910ee99d383876a5279adf37780337a7a45e3e3c9b"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.6/OpenSSL.xcframework.zip",
            checksum: "f75d5fa836e0e3aee4b909a25e29f19b8a77cabf98062c48d4d7235de04a43df"
        ),
    ]
)
