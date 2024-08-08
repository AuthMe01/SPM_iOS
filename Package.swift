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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.21/AuthMe.xcframework.zip",
            checksum: "f1f394b7c2cedbe18ef9f6fb0b138da78b09b95f3bb5209648418ba22b98730a"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.21/AuthMeUI.xcframework.zip",
            checksum: "f80929d9ca9dc52f01cee6c47cb7a677423c7b93273cb9b7643c09497d88636e"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.11/Algo.xcframework.zip",
            checksum: "2b8fe1fd6ddbc19da4959bd8083e32a3db8d7e915e8b5eb34d69e44b622f9a80"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.12/AuthmeNFCKit.xcframework.zip",
            checksum: "57da557a210eccef118c37cf5c6d5cd3acde454358bdc08d11bf982bda479658"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.11/OpenSSL.xcframework.zip",
            checksum: "1a7c56f9b5b024923c55f796246288c17b262208aabd18cea115627904d6fe2d"
        ),
    ]
)
