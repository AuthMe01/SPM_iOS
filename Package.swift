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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.6/AuthMe.xcframework.zip",
            checksum: "0d220291218748a7e713ebc5ff13127c7bab0bf85f7c8ccd460273c02e855e2b"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.6/AuthMeUI.xcframework.zip",
            checksum: "b80325a1c5b4526e74a11ac953a3d7c661061f8f0dc415dea0fc4d422edbd841"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.8/Algo.xcframework.zip",
            checksum: "385c7fc3b607176099eb846950a09cc52d3515d3e00f022ab1a024546c5818b2"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.5/AuthmeNFCKit.xcframework.zip",
            checksum: "bd1b1ce4d08e6bda36dbbabd99f62cf18697077ace78c1b6662eac93cf352c7e"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.8/OpenSSL.xcframework.zip",
            checksum: "8d9f970d102554d74b9002043b9ce4b27e4bd80891e85d415f77d2b4f6ce4b29"
        ),
    ]
)
