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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/AuthMe.xcframework.zip",
            checksum: "1e11a927b2710140d7dacbb78bf2031993d233f0a12df21c8e67bd09464c87f2"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/AuthMeUI.xcframework.zip",
            checksum: "9dd8c7981c42ec8bfae96d29a16d82b5e9ce23210d1c98b29bec004d8b2a84de"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/Algo.xcframework.zip",
            checksum: "4caa724b2d15af56f6d65671df47e28adfe982206205a62889d5ffd68423c2eb"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/OpenSSL.xcframework.zip",
            checksum: "402ddb53a920d584f41ed402d2f032f9df12f04997e5633eb8bd944c16344a0d"
        ),
    ]
)
