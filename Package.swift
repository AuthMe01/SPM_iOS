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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.29/AuthMe.xcframework.zip",
            checksum: "df9e549d06c90cfb244e0c794b5733e35294e3e06799b33697d082dac2f0d18e"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.29/AuthMeUI.xcframework.zip",
            checksum: "ba81dfdfd252f3614a3cf7a4d118d248dc3baa046f279ad048a901e1cc886d7e"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.33/Algo.xcframework.zip",
            checksum: "3b8905605cff336572ae88e2960d0f9a820e7017cb7f0ca2628d9b3495f4b150"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.11/AuthmeNFCKit.xcframework.zip",
            checksum: "76cf52b04cc6d275aa9b6b43b0ff5ef8ada8c1a89a363e2e7307f3f5c006e261"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.33/OpenSSL.xcframework.zip",
            checksum: "bafecb4da27d66e9a761463a7b24a34d58faea7c2d44637a2c0a069d07f3ce69"
        )
    ]
)
