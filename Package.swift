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
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.4.0")
    ],
    targets: [
        .target(
            name: "AuthMeSPM",
            dependencies: [.productItem(name: "Lottie", package: "lottie-spm")]),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.13/AuthMe.xcframework.zip",
            checksum: "68d4f5dbc66eb3ee12d310cbd49fe3080f36e3e324433760026dd99327f1989e"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.13/AuthMeUI.xcframework.zip",
            checksum: "aad30ac74fe432c5ab700c2f6771e081bc7b873739fb48b727f13004941359e1"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.8/Algo.xcframework.zip",
            checksum: "385c7fc3b607176099eb846950a09cc52d3515d3e00f022ab1a024546c5818b2"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.10/AuthmeNFCKit.xcframework.zip",
            checksum: "226b2cd27a02ee8bb648aaccc47abfe926bf08a00594870a6d8f8f5e84d02686"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.8/OpenSSL.xcframework.zip",
            checksum: "8d9f970d102554d74b9002043b9ce4b27e4bd80891e85d415f77d2b4f6ce4b29"
        ),
    ]
)
