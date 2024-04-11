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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.30/AuthMe.xcframework.zip",
            checksum: "c9311e8fbac1ff7f079a757780f0496b2e09ad51b89e735e1f85ad2cd62d149a"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.30/AuthMeUI.xcframework.zip",
            checksum: "a163cf1c2afc89c4986556a6ba4ef98e82c4869f1f215b50fbe734a96ae2a156"
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
