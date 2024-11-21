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
                "AuthmeNFCKit"
            ]),
    ],
    targets: [
        .target(
            name: "AuthMeSPM"
        ),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.2.1/AuthMe.xcframework.zip",
            checksum: "7b2c1c9af2f7efdb5c0d78831bf4299505012bf0d25912667b75af6efd58bdc9"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.2.1/AuthMeUI.xcframework.zip",
            checksum: "e0c3fb53da3a58d8e22fc71e0e302b8fc405417d127c8c8cde2a7415ccf786a6"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.16/Algo.xcframework.zip",
            checksum: "d123132cbf8907ae418e0a92aba3e6c47a9e2b12659f9d6649d482dd4e6901ca"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/0.1.4/AuthmeNFCKit.xcframework.zip",
            checksum: "fc00eee84b8cf2c91cd3efcb0489dd44d771be4322ba78ca23c2148fecf1c48b"
        )
    ]
)
