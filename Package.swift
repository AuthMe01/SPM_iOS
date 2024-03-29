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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3-rc3/AuthMe.xcframework.zip",
            checksum: "1c55893cf838bc498784503ae2532be87982235c6193176fe210c0ff4aeca058"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3-rc3/AuthMeUI.xcframework.zip",
            checksum: "25600759963181e60ff9cc2cd63ceca0ba4da122a5310f8d091262d2c69363fc"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4/Algo.xcframework.zip",
            checksum: "8bc3ad2ff75f473d5dcd2505ae4751f5729315df73f4cd2e2a8666c2c06601a7"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/0.9.1/AuthmeNFCKit.xcframework.zip",
            checksum: "a8b79aa9fed446e88900e3d6c504f2c780f15f48ab5cdbfd6d7681718411482a"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4/OpenSSL.xcframework.zip",
            checksum: "8e7071a3945c59882179dd4fb8bb0f1d358b8fbd52b5d948bdc79e20e83c00bb"
        ),
    ]
)
