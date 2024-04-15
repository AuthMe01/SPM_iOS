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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3/AuthMe.xcframework.zip",
            checksum: "e95b55d01d323c08c172ae0725a12153e7ad9d5a3224de458ae3ad0ffb3da663"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3/AuthMeUI.xcframework.zip",
            checksum: "52954e06e4a5082fb845a6278d2854a17a6cda94dd137938e7216485ae469e11"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0/Algo.xcframework.zip",
            checksum: "c2139572145e6281ef30af7bbae8c48f799a369e83137bbc786638217bc2d967"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.0/AuthmeNFCKit.xcframework.zip",
            checksum: "38c4041005b194e912d4e55d37097ac7838be4f6dd0b020f5ab57787ce64939d"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0/OpenSSL.xcframework.zip",
            checksum: "50c83eb739e770348d034e30c6cc5b99f19dddeb01aeed340afdab40f8f12e2b"
        ),
    ]
)
