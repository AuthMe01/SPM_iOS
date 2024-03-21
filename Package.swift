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
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.4.0")
    ],
    targets: [
        .target(
            name: "AuthMeSPM",
            dependencies: [.productItem(name: "Lottie", package: "lottie-spm")]),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3-rc0/AuthMe.xcframework.zip",
            checksum: "e968ab7d6a990a184c895ab64780f1d91555205a4264b9c78486da5f22b19dac"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3-rc0/AuthMeUI.xcframework.zip",
            checksum: "ac51dfbe7948100de9adb93656c6b65091deea4aee93c3df9a608910ed59b62e"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4-rc0/Algo.xcframework.zip",
            checksum: "e465235091ae766975485469538249ded1e02e77babfedd88dda9f8644cd8017"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/0.9.0/AuthmeNFCKit.xcframework.zip",
            checksum: "67217e1a10f854b2e19b93e0e618316592ed6d2dba2016e724ddebe461127750"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4-rc0/OpenSSL.xcframework.zip",
            checksum: "14ff1055ac46d820ebc6fdaa457eec41912d7d5ed46a2b08332dca15b82b94a2"
        ),
    ]
)
