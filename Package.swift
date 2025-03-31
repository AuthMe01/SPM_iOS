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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.19/AuthMe.xcframework.zip",
            checksum: "cf927fb68ba1c57c8af5deb02debd57d5bfed12434d7ebf6db64c475d71fa504"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.19/AuthMeUI.xcframework.zip",
            checksum: "a54fda39b7ad205e19cd4a95e47a60b5d41b4483a8d3ba2c172375d42ef5f593"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.5/Algo.xcframework.zip",
            checksum: "7c6309c0b6aa713b69544e79d6217b9418be0497e5ce686086c01ca122882031"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.5/OpenSSL.xcframework.zip",
            checksum: "479a64e7291f6f6913b9b2dfaf0dc99c81dbf48b38697cc67c07878181d282d6"
        )
    ]
)
