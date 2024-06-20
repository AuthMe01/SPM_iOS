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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.7/AuthMe.xcframework.zip",
            checksum: "ba1971e353c79a94b822135b35feca753af94c8882d5f64f27654bdbc9e5ec0b"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.7/AuthMeUI.xcframework.zip",
            checksum: "d18d910041bb311c5c24c6dd51af60e810b238033776366e88e4417297c412d7"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.8/Algo.xcframework.zip",
            checksum: "385c7fc3b607176099eb846950a09cc52d3515d3e00f022ab1a024546c5818b2"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/v1.0.6/AuthmeNFCKit.xcframework.zip",
            checksum: "b3f0830b76ce416b72bb91dbe502624bba7fe5e43b13cc134c54774b1648377a"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.8/OpenSSL.xcframework.zip",
            checksum: "8d9f970d102554d74b9002043b9ce4b27e4bd80891e85d415f77d2b4f6ce4b29"
        ),
    ]
)
