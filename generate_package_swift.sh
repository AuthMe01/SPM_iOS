#!/bin/bash

version="$1"
algo_version="$2"
nfc_version="$3"
checksum_core="$4"
checksum_ui="$5"
checksum_algo="$6"
checksum_nfc="$7"
checksum_openssl="$8"

cat <<EOF > Package.swift
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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/$version/AuthMe.xcframework.zip",
            checksum: "$checksum_core"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/$version/AuthMeUI.xcframework.zip",
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
        )
    ]
)
EOF
