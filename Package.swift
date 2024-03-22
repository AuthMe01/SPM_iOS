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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3-rc1/AuthMe.xcframework.zip",
            checksum: "aa658fe82d389244c690b3dad8d71db6a8ccd3ac2a2480a650392e0570c89151"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3-rc1/AuthMeUI.xcframework.zip",
            checksum: "968afdc1a8a7869c48aea7f077c8755a9c175872d3152330004164fa0d358beb"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4-rc0/Algo.xcframework.zip",
            checksum: "e465235091ae766975485469538249ded1e02e77babfedd88dda9f8644cd8017"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/0.9.0/AuthmeNFCKit.xcframework.zip",
            checksum: "77c070019dcd7a10e34ea3bc40986be94993fa4858ffe6aff0456e18a586c7bc"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4-rc0/OpenSSL.xcframework.zip",
            checksum: "14ff1055ac46d820ebc6fdaa457eec41912d7d5ed46a2b08332dca15b82b94a2"
        ),
    ]
)
