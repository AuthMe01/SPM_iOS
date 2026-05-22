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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.17/AuthMe.xcframework.zip",
            checksum: "ca61a8981d5c3e85b068f13a7f406c619a31b990c4f7e0eb8552627ccb404397"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.17/AuthMeUI.xcframework.zip",
            checksum: "d45dcc3a7dc90639112f4a9840bc858cc5f05520ac65269d85b7572c480e85a0"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.31/Algo.xcframework.zip",
            checksum: "9c1d899f2903c15c812613054204392e3bf1a23d8688527963901a6c58fa9f27"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.10/AuthmeNFCKit.xcframework.zip",
            checksum: "b2bf9f7fc731ce7dca38d7247fb608c1829997ba88dc9b1606c07e9fe51c59e7"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.31/OpenSSL.xcframework.zip",
            checksum: "0716815dda1166f4d52c37cbd8a8a0bf43b18ee107abb18a4f19ce5d616869e5"
        )
    ]
)
