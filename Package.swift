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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3-rc7/AuthMe.xcframework.zip",
            checksum: "93d87636004bf2060615081df115502a3f721a107219526933875bde33a2641c"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.6.3-rc7/AuthMeUI.xcframework.zip",
            checksum: "12f7217c0fc46ac8c94d67877ef3a9d3232c22e124c1578ceaf51e4153f7104e"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4-rc1/Algo.xcframework.zip",
            checksum: "0f0ca8ca0557581bf1f594e7ce256b809ffa2685374b92addf066aa4ba402aed"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/0.9.2/AuthmeNFCKit.xcframework.zip",
            checksum: "8920c1cace8f89d2cb6895f8e588e37c62cf21aae5e682acdf6770ea1b6e3442"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.0.4-rc1/OpenSSL.xcframework.zip",
            checksum: "584ffd9e31cfcaaa5f1fa6fa388a26a01134d6c4f3c4731dbb3684951942db9d"
        ),
    ]
)
