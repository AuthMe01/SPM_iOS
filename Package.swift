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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.0/AuthMe.xcframework.zip",
            checksum: "ddc347890266fe427b273f39f193235891f88c90dd2b8fecb119022d24005568"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.0/AuthMeUI.xcframework.zip",
            checksum: "c9c0ff5f8193b0e7a102e5be727d15c1c0a2d2124b194ac58fa98c4cae939eec"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.4/Algo.xcframework.zip",
            checksum: "a5389fc139ce839d90765f4b491467670ee69907763989e5a78cd3ed6b460d67"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.1/AuthmeNFCKit.xcframework.zip",
            checksum: "ddc1c6042625238c0bece5910ee99d383876a5279adf37780337a7a45e3e3c9b"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.4/OpenSSL.xcframework.zip",
            checksum: "7cff0325178be141214ba4acd0c7b333649ba0a27b5e8766cc8282988ad30d66"
        ),
    ]
)
