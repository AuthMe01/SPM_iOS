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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.2/AuthMe.xcframework.zip",
            checksum: "5a95db40af40b988bcf908fffa0fcb4d1d86a81f7704c8ff25122ce545c3e78f"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.2/AuthMeUI.xcframework.zip",
            checksum: "8a8acea5a4ba58e53a40e3c79a08f2abf3cc2b376ee7126d8ac814a7c2256ea2"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.7/Algo.xcframework.zip",
            checksum: "a32ea1328bf7abd07f8fc536c8c8401349d6d36e9e3cfc99e70df6c019a0b125"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.1/AuthmeNFCKit.xcframework.zip",
            checksum: "ddc1c6042625238c0bece5910ee99d383876a5279adf37780337a7a45e3e3c9b"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.7/OpenSSL.xcframework.zip",
            checksum: "7621d79d269ba5f6ab72177a34a8c87cdb9d98b01ae90a6d844b6fe77d6d9086"
        ),
    ]
)
