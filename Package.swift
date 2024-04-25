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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.5/AuthMe.xcframework.zip",
            checksum: "fec8a71ef5e256cdf4ffc5c1e4567ae0c7218ece25b315b8434c142c0a3e4361"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.5/AuthMeUI.xcframework.zip",
            checksum: "680a52022f9cf76dcf7148321a992af7987dfb54b8a805dcb4b7e34b9ed3505d"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0/Algo.xcframework.zip",
            checksum: "c2139572145e6281ef30af7bbae8c48f799a369e83137bbc786638217bc2d967"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.1/AuthmeNFCKit.xcframework.zip",
            checksum: "ddc1c6042625238c0bece5910ee99d383876a5279adf37780337a7a45e3e3c9b"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0/OpenSSL.xcframework.zip",
            checksum: "50c83eb739e770348d034e30c6cc5b99f19dddeb01aeed340afdab40f8f12e2b"
        ),
    ]
)
