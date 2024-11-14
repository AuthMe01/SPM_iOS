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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.37/AuthMe.xcframework.zip",
            checksum: "734c6e9b993329a2ea618bcb34b264aea1251fbccfbc95fe617657c1145fd7d1"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.37/AuthMeUI.xcframework.zip",
            checksum: "691f893340d4a1595115ff2689fda614b40c7ba05a40bc32cab718c380ae6531"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.15/Algo.xcframework.zip",
            checksum: "18b21b3630dacc4fabe5e7cd185f597c2d7f8ee56b438dcc26f545c80cb2cddf"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.17/AuthmeNFCKit.xcframework.zip",
            checksum: "a2aba22375a0f209052f99c313bbc14aa0f792e1a7683b710f2bd0c750f05262"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.15/OpenSSL.xcframework.zip",
            checksum: "31497f759ba6b75330bc234a00fdf2083073967368a2c958f8b5b987dd51011a"
        )
    ]
)
