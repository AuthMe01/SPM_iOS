#!/bin/bash

version="$1"
algo_version="$2"
nfc_version="$3"
checksum_core="$4"
checksum_ui="$5"
checksum_algo="$6"
checksum_nfc="$7"
checksum_openssl="$8"
lottie_version="$9"

cat <<EOF > Package.swift
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
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "$lottie_version")
    ],
    targets: [
        .target(
            name: "AuthMeSPM",
            dependencies: [.productItem(name: "Lottie", package: "lottie-spm")]),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/$version/AuthMe.xcframework.zip",
            checksum: "$checksum_core"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/$version/AuthMeUI.xcframework.zip",
            checksum: "$checksum_ui"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/$algo_version/Algo.xcframework.zip",
            checksum: "$checksum_algo"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/$nfc_version/AuthmeNFCKit.xcframework.zip",
            checksum: "$checksum_nfc"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/$algo_version/OpenSSL.xcframework.zip",
            checksum: "$checksum_openssl"
        ),
    ]
)
EOF
