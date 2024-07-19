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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.17/AuthMe.xcframework.zip",
            checksum: "4e11dce56abeb9b51aeb6523c81ebc73eb88f59ee4b2462cd25e500f78c229dd"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.17/AuthMeUI.xcframework.zip",
            checksum: "e1ceda032150a090ed3900376e111bf06102c06347f230745db777ed55ae0829"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.10/Algo.xcframework.zip",
            checksum: "760628acf9d4b503d839ada49535663d37796cd8139880a898e090387d1c79eb"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.12/AuthmeNFCKit.xcframework.zip",
            checksum: "57da557a210eccef118c37cf5c6d5cd3acde454358bdc08d11bf982bda479658"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.10/OpenSSL.xcframework.zip",
            checksum: "867387932f4e203f9ddbe60298d08098a0ad352457f4e7d53e096c610dff9c00"
        ),
    ]
)
