// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AuthMeSPM",
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
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.3.3")
    ],
    targets: [
        .target(
            name: "AuthMeSPM",
            dependencies: [.productItem(name: "Lottie", package: "lottie-spm")]),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.2-rc0/AuthMe.xcframework.zip",
            checksum: "d381c91f511ecfcee372e2a0a7feddde4d75440a70470fa9867ae4f486603650"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.2-rc0/AuthMeUI.xcframework.zip",
            checksum: "861fadbc320336cf156b72c21c7d1265712e6c4e5c31fd788ef432656c32474f"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.2-rc0/Algo.xcframework.zip",
            checksum: "e1fa6bf6a0f7fc350a8dad60dd7454f300fecd05fdd22d3e89d1131979396790"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.2-rc0/AuthmeNFCKit.xcframework.zip",
            checksum: "9cb7875c06021e0f5ecbc25aca4ad6a42a8f63c6f274dde8193bab7f30147757"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.2-rc0/OpenSSL.xcframework.zip",
            checksum: "98fa03bb354924f7cdbc3fb54f903a59bc4d8fd8732b41d37beaeef3f9c84f55"
        ),
    ]
)
