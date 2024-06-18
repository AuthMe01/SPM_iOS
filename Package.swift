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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.5/AuthMe.xcframework.zip",
            checksum: "b140244ad6453270425b7d15821451c0871d9b0231450bc5b8033da78c56efb7"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.5/AuthMeUI.xcframework.zip",
            checksum: "503d88d4f7f4d9fb45fb39685d77c3725e5eb25b236f6be32e024e6cdbb53409"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.8/Algo.xcframework.zip",
            checksum: "385c7fc3b607176099eb846950a09cc52d3515d3e00f022ab1a024546c5818b2"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.4/AuthmeNFCKit.xcframework.zip",
            checksum: "0076df82424b59d7403ad85cedc360f3137fb5ced686ee48b97429bc07b82e04"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.8/OpenSSL.xcframework.zip",
            checksum: "8d9f970d102554d74b9002043b9ce4b27e4bd80891e85d415f77d2b4f6ce4b29"
        ),
    ]
)
