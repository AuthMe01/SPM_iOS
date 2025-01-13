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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.0/AuthMe.xcframework.zip",
            checksum: "12fd0cb982f52daf1c808d4599b2d3b7a4439c53d537a09e7bfe772cbffda97e"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.0/AuthMeUI.xcframework.zip",
            checksum: "9f231000013f29fb265c626ea0bee3f7bf0c4062fbb1bbd103f258096bf66b5e"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.0/Algo.xcframework.zip",
            checksum: "eeaf22d28fec3e709472240f60755b9815c9805a13c2cf6e1da11eb3c5215cf3"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.0/OpenSSL.xcframework.zip",
            checksum: "812e72e5a399e859118377b570359c0fdc744eb9bfff81c69b95c4244e436641"
        )
    ]
)
