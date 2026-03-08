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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.7/AuthMe.xcframework.zip",
            checksum: "bcbe1d630c77a9098c1e674799573a0e63e46c84e1a9a97e4ef8aef78b357af4"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.7/AuthMeUI.xcframework.zip",
            checksum: "f3310f7ba63408b2d8fcfb001049baa77243dc4d859727cd189aa694544e9631"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.26/Algo.xcframework.zip",
            checksum: "d9aac4bafdaf7e21c6571d1bdcd6e5f4d3c13cc723e885a75cfcea1020f9177c"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.7/AuthmeNFCKit.xcframework.zip",
            checksum: "88be1ba51f7bdbbf8d9d99b5695da7e21a9e7a21ab0b56853a56c10bd8888f16"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.26/OpenSSL.xcframework.zip",
            checksum: "8b78f0bc602cb981fcc34bfb5d9702513435ad8b1b548748aac9afbf3c59b0f0"
        )
    ]
)
