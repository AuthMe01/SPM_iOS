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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.44/AuthMe.xcframework.zip",
            checksum: "cb57ca1a5be594c4acbbde96f47911b6d35bdced11d33fbae1b8f3a5b5096228"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.44/AuthMeUI.xcframework.zip",
            checksum: "aee442ba8850e93e7ae066a515ce62778ef4d20a933da9638ac624bf8097ff06"
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
