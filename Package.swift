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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.20/AuthMe.xcframework.zip",
            checksum: "b40c48502705f00776b081e4358be2f3b904ee7b88d16ee8eabdf4beb69ab590"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.20/AuthMeUI.xcframework.zip",
            checksum: "48a8875aea56f6c3814402495219df3deb6aaca31a83473c82ccc7ca3631af24"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.10/Algo.xcframework.zip",
            checksum: "760628acf9d4b503d839ada49535663d37796cd8139880a898e090387d1c79eb"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.12/AuthmeNFCKit.xcframework.zip",
            checksum: "57da557a210eccef118c37cf5c6d5cd3acde454358bdc08d11bf982bda479658"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.10/OpenSSL.xcframework.zip",
            checksum: "867387932f4e203f9ddbe60298d08098a0ad352457f4e7d53e096c610dff9c00"
        ),
    ]
)
