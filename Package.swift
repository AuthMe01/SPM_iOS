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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.7.0-rc0/AuthMe.xcframework.zip",
            checksum: "1a2eb31d7160d182bb7a049bdc651075ce764bc7ae08a87975e4fcfeaba50a14"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.7.0-rc0/AuthMeUI.xcframework.zip",
            checksum: "48a3b4c9f6e345f47a94091c14d5bcb7c37ff21f69e025062397414d124c7bcf"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.7.0-rc0/Algo.xcframework.zip",
            checksum: "d63ee46f61bf4b7766de5fd1ca060a1fd04ea000e95c4ca00c613d914f1c4d4c"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.7.0-rc0/AuthmeNFCKit.xcframework.zip",
            checksum: "4ab9f315adbdfed08d373d237c2e848fc99b568430b40ea4d2820316a0ca4150"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.7.0-rc0/OpenSSL.xcframework.zip",
            checksum: "e5107abc8a30ab7f1abe8c3e122c851177d8c013a86005a2bbc1e122da4cd55d"
        ),
    ]
)
