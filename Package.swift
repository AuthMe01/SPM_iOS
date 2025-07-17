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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.36/AuthMe.xcframework.zip",
            checksum: "200d03bbc02667f9df87de295fb10fbb0674462085cb8d38c88ff72e220984c0"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.36/AuthMeUI.xcframework.zip",
            checksum: "b57a0ccef3ca3206a702bb664ef3914ecb95c92e25770b0d5e210e080c967dbe"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.8/Algo.xcframework.zip",
            checksum: "b03a4160d9307862004c8651044fb4a7e0897f17dcd2a507f0ed79c89e2191f4"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.8/OpenSSL.xcframework.zip",
            checksum: "99e4b3db1988e82c20b32e613d8a45d6604a0519b8abf0a3560fdd571ab3af34"
        )
    ]
)
