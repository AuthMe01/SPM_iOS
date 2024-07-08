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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.14/AuthMe.xcframework.zip",
            checksum: "ac1483e87efd88938069923fcdc47d51c84e83ca06f4be19b2a38a792f708706"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.14/AuthMeUI.xcframework.zip",
            checksum: "8dc7283e504294708628fa8fdc1e4a25a3e34e94b0c4bf75fb0ec8aeec85949c"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.9/Algo.xcframework.zip",
            checksum: "a100aaaa4e63ab63571139ce00ef2dee66bea7707e2c39dc31a652fbf415484e"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.11/AuthmeNFCKit.xcframework.zip",
            checksum: "21911662536d7b6c1e30315789e20e5cd305737ce950192f90d3e41491013095"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.9/OpenSSL.xcframework.zip",
            checksum: "2eeddb23bedf17284df6a301d4d3be1b9384f1151720c0cdffa26a9a3ef68076"
        ),
    ]
)
