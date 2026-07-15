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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.25/AuthMe.xcframework.zip",
            checksum: "8c0f4d5d2e6dd3ec2797c7bdf74d01394bc0755ae957c947d136122bf787a830"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.25/AuthMeUI.xcframework.zip",
            checksum: "837922fd0ec1ff6ae2d02cb7065164d58f19562fd84961130972ffc9e1781d54"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.32/Algo.xcframework.zip",
            checksum: "ba655036513026d8808993472304f705501eaa6a06942f1c9c4c318a9b2ebe51"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.11/AuthmeNFCKit.xcframework.zip",
            checksum: "76cf52b04cc6d275aa9b6b43b0ff5ef8ada8c1a89a363e2e7307f3f5c006e261"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.32/OpenSSL.xcframework.zip",
            checksum: "debaf649db38e7c5c2d2f5ef72ab5fbb327fa399e6691d11a5dcec886b3ce38f"
        )
    ]
)
