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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.28/AuthMe.xcframework.zip",
            checksum: "ad58226dd9cdb4b4bef1e7650e47d907b63107a626b65b8cbe1dbfa55195ef8b"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.28/AuthMeUI.xcframework.zip",
            checksum: "56d5425fb9592a2bcf79249058c8bb6f095ff9128ffcd7beca85e071662398c2"
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
