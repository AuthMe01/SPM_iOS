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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.2.2/AuthMe.xcframework.zip",
            checksum: "dc9f76041ce686c46dd748b3d07765bad0a144c99eeafd3ffdecb76ee404e754"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.2.2/AuthMeUI.xcframework.zip",
            checksum: "fe44c378909b98401579d7a2a3b8dfcb2b02e7ab39120e60ecf755d42c512281"
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
