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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.0/AuthMe.xcframework.zip",
            checksum: "4b3baf3aed0ab3e7ba54399d1d611e8da22bc3757fabea0eb2a641714f401de5"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.0/AuthMeUI.xcframework.zip",
            checksum: "762ce196dc5192d621c456e81db67f8692b85688a871e52542e62d8049839ad3"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.0/Algo.xcframework.zip",
            checksum: "095e41d15613526dc736c1655d1e6250f84c6a03d65b56c68f7595b78b4a0f09"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.0/OpenSSL.xcframework.zip",
            checksum: "b8b196d02efeaf7d2ddf44b545faface69fb7efafb0370fa06f9838da91c5bb9"
        ),
    ]
)
