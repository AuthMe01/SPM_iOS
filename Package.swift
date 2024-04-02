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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3-rc4/AuthMe.xcframework.zip",
            checksum: "39ac2d171f59002a14828311d87be6012592db736521397c940bddfb1a847e98"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3-rc4/AuthMeUI.xcframework.zip",
            checksum: "8d1de32d2616dd419c5c3e31a6c1a2b27fdccc5801899623f439cd81b6ee36b6"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4-rc1/Algo.xcframework.zip",
            checksum: "0f0ca8ca0557581bf1f594e7ce256b809ffa2685374b92addf066aa4ba402aed"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/0.9.1/AuthmeNFCKit.xcframework.zip",
            checksum: "a8b79aa9fed446e88900e3d6c504f2c780f15f48ab5cdbfd6d7681718411482a"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4-rc1/OpenSSL.xcframework.zip",
            checksum: "584ffd9e31cfcaaa5f1fa6fa388a26a01134d6c4f3c4731dbb3684951942db9d"
        ),
    ]
)
