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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.8/AuthMe.xcframework.zip",
            checksum: "c0073a83546277d9cedfb0f4c2f989ee4ab36e1c51667b047ca67ab31f4b0f1a"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.8/AuthMeUI.xcframework.zip",
            checksum: "5438787c3c897bc57827102eff03821e77b50f2d838f34c0607ab1d40e2c61e0"
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
