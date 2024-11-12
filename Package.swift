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
    targets: [
        .target(
            name: "AuthMeSPM"
        ),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.35/AuthMe.xcframework.zip",
            checksum: "179b4dec850f8a001493ca0642044d975f1e4433982c5fdbaa81df9d59705b12"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.35/AuthMeUI.xcframework.zip",
            checksum: "0ff43b5276470f23798f45a4dd1473d1060af4ed4900912715333d1092085103"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.15/Algo.xcframework.zip",
            checksum: "18b21b3630dacc4fabe5e7cd185f597c2d7f8ee56b438dcc26f545c80cb2cddf"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.16/AuthmeNFCKit.xcframework.zip",
            checksum: "699896b501b3bc3a3f6cba5c69ac1e4cd528d58ea415d5c7a0fbbd8579faa0da"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.15/OpenSSL.xcframework.zip",
            checksum: "31497f759ba6b75330bc234a00fdf2083073967368a2c958f8b5b987dd51011a"
        )
    ]
)
