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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.31/AuthMe.xcframework.zip",
            checksum: "5ebb9237bb83f0b1d0caa67133c45ae6c14d509b2a566b60a5bc2f80bc2209e4"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.31/AuthMeUI.xcframework.zip",
            checksum: "4bfd51ba2f2d1f492044d52f6c503e0359aae9e993af2a5a54cdf95daed85e41"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.14/Algo.xcframework.zip",
            checksum: "7506f1ddc81fe44e313ed31f7d3c6c061d97fd34fdd9a9b0825a63e188c230e8"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.16/AuthmeNFCKit.xcframework.zip",
            checksum: "699896b501b3bc3a3f6cba5c69ac1e4cd528d58ea415d5c7a0fbbd8579faa0da"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.14/OpenSSL.xcframework.zip",
            checksum: "9407e0fa016d4e965c578556abff34e66d593f66fb99fe7a8167c45e7bb48a61"
        )
    ]
)
