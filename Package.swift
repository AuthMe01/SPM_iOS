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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.22/AuthMe.xcframework.zip",
            checksum: "88bf1f4b7488e7eadd236d3addcea35c66e997664e782c572ac5b4e8b4ec3d26"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.22/AuthMeUI.xcframework.zip",
            checksum: "cbe47f9bd4502f9f1c911a2f876db9e507689af218bc25a565726c025422a68e"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.12/Algo.xcframework.zip",
            checksum: "9c1435c7f9330f1f8d95adec4dc6575c31517502b303607d23426215c532cabc"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.13/AuthmeNFCKit.xcframework.zip",
            checksum: "d5a3a8915dc6c79ed2baa0009edd59c602ceffcfbb01d3366104747eb5becedb"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.12/OpenSSL.xcframework.zip",
            checksum: "1e0fda79f7b36df5309573868f0f9ff526dc5d046bc7fce1884b002256456553"
        ),
    ]
)
