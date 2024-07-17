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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.16/AuthMe.xcframework.zip",
            checksum: "f0dc565bce772a79f6f1b33a8b9eef8c17c1fda70f5a24121ea914d6de2b167e"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.16/AuthMeUI.xcframework.zip",
            checksum: "fc91a4a523239bffaee0699b62ac8593aa085cee62cfe6aed1e1a09301c62fd0"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.10/Algo.xcframework.zip",
            checksum: "760628acf9d4b503d839ada49535663d37796cd8139880a898e090387d1c79eb"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.11/AuthmeNFCKit.xcframework.zip",
            checksum: "21911662536d7b6c1e30315789e20e5cd305737ce950192f90d3e41491013095"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.10/OpenSSL.xcframework.zip",
            checksum: "867387932f4e203f9ddbe60298d08098a0ad352457f4e7d53e096c610dff9c00"
        ),
    ]
)
