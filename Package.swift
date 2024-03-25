// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AuthMeSPM",
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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3/AuthMe.xcframework.zip",
            checksum: "d750ac1d610b4cc7a9a64902786e51c6f68a8a5da144907991a046ea93afc034"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3/AuthMeUI.xcframework.zip",
            checksum: "42ed593a34725fcd25a62492c837fff32eeafb9a442c0c456ba07bc3afbe70c6"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4/Algo.xcframework.zip",
            checksum: "8bc3ad2ff75f473d5dcd2505ae4751f5729315df73f4cd2e2a8666c2c06601a7"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/0.9.0/AuthmeNFCKit.xcframework.zip",
            checksum: "77c070019dcd7a10e34ea3bc40986be94993fa4858ffe6aff0456e18a586c7bc"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4/OpenSSL.xcframework.zip",
            checksum: "8e7071a3945c59882179dd4fb8bb0f1d358b8fbd52b5d948bdc79e20e83c00bb"
        ),
    ]
)
