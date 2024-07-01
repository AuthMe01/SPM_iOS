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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.10/AuthMe.xcframework.zip",
            checksum: "fac34e49f5d975551300a6d412ecb701880955bebd4d9aad23b779ac4229179a"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.10/AuthMeUI.xcframework.zip",
            checksum: "da193f686dd5fbe4fc910f797c66b03896450d275cb2c474d9560396843c806e"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.8/Algo.xcframework.zip",
            checksum: "385c7fc3b607176099eb846950a09cc52d3515d3e00f022ab1a024546c5818b2"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.8/AuthmeNFCKit.xcframework.zip",
            checksum: "ab5b9ec3f4425a6b071e8c8d9c4b6027d4071741c8ee0a51b4d3b18b1589da9b"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.8/OpenSSL.xcframework.zip",
            checksum: "8d9f970d102554d74b9002043b9ce4b27e4bd80891e85d415f77d2b4f6ce4b29"
        ),
    ]
)
