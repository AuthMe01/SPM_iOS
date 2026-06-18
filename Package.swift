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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.21/AuthMe.xcframework.zip",
            checksum: "c9cd4816b1a41655780cd83f82826b4ff6083d8e3d921cd1ce67daac09f0741a"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.21/AuthMeUI.xcframework.zip",
            checksum: "22c4d93a998a4f812a37a95217f6acdc9dc0b244211d297ba80c1fa77dc3b734"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.31/Algo.xcframework.zip",
            checksum: "9c1d899f2903c15c812613054204392e3bf1a23d8688527963901a6c58fa9f27"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.10/AuthmeNFCKit.xcframework.zip",
            checksum: "1e98264f1ca1875890503c9bee30a1b434fb885a4aa1fd393492c1c9003ccbc5"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.31/OpenSSL.xcframework.zip",
            checksum: "0716815dda1166f4d52c37cbd8a8a0bf43b18ee107abb18a4f19ce5d616869e5"
        )
    ]
)
