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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.24/AuthMe.xcframework.zip",
            checksum: "8bb96a97204845f73eed5d02ff1bf89c1939dbef13c7e9d7572d52daff9bf5c5"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.24/AuthMeUI.xcframework.zip",
            checksum: "c1fd29ed0734022caa4ea9a0b43fcbc7c18970fbeaaf843d472e70ca327edaba"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.31/Algo.xcframework.zip",
            checksum: "9c1d899f2903c15c812613054204392e3bf1a23d8688527963901a6c58fa9f27"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.11/AuthmeNFCKit.xcframework.zip",
            checksum: "76cf52b04cc6d275aa9b6b43b0ff5ef8ada8c1a89a363e2e7307f3f5c006e261"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.31/OpenSSL.xcframework.zip",
            checksum: "0716815dda1166f4d52c37cbd8a8a0bf43b18ee107abb18a4f19ce5d616869e5"
        )
    ]
)
