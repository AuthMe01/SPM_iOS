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
    targets: [
        .target(
            name: "AuthMeSPM"
        ),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.10/AuthMe.xcframework.zip",
            checksum: "087c20d55011e6f13068f905ce1d779daefe9e2fa58a124d55f6b20440992b34"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.10/AuthMeUI.xcframework.zip",
            checksum: "c0e4560457c1a1b67baa08f3d38d822a2b4d14c5e94be5cc9559e3f8956ec0e3"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.27/Algo.xcframework.zip",
            checksum: "03b8a27e23b1ebc2058a61f52f3391523e33fc838af011e01561ebc02de85996"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.8/AuthmeNFCKit.xcframework.zip",
            checksum: "716adc0eed15d15cb0f2704f35ec7932d1a59de68ee94fa6cce54e7d30a65e96"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.27/OpenSSL.xcframework.zip",
            checksum: "33c02b0776bc11189718175e8a02374ac353fed8b6c7af52567d8fef215340e8"
        )
    ]
)
