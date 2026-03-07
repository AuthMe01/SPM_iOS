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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.5/AuthMe.xcframework.zip",
            checksum: "16e839221dce46dc31289050996bebd5c70688136fc260e808b00dea37bbb6ec"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.5/AuthMeUI.xcframework.zip",
            checksum: "f3a4b1033feb503c73e52baf121360635205673001c383ea288d17b580ee24fc"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.24/Algo.xcframework.zip",
            checksum: "5e1c88e4f709bf65f529f378fbe1cb92fa8b3fcefe6f277f82ac156bc54a3ba6"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.2/AuthmeNFCKit.xcframework.zip",
            checksum: "fef2f03869f3ca4a26210135afb6aa89e154fee299151904429fb9b3a013534d"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.24/OpenSSL.xcframework.zip",
            checksum: "54f3d2d1ceace48c8b85bc105757a3b9d86e74a9405fb73dad3cbf70b88e1363"
        )
    ]
)
