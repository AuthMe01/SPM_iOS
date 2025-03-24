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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.48/AuthMe.xcframework.zip",
            checksum: "633067a120fb9488930f0b568dfaac1cbe4ff88d97e6787b1138f780d6c6301d"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.48/AuthMeUI.xcframework.zip",
            checksum: "cf834ca4210bebe48942a7f608b640ab052b426fae6e5d6af37251a829bbc2ad"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.21/Algo.xcframework.zip",
            checksum: "250c3cd00f79267716d39b0ad1506f04c7fc545d56775a9d91d432b8e6aaa30f"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.21/OpenSSL.xcframework.zip",
            checksum: "59c8f1f544c904b9c2a7225265dcc06e5893e79bcc0163c35a18d20b429d9da2"
        )
    ]
)
