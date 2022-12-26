#!/bin/sh

echo "Path: $1";

if [[ -n "$1" ]]; then
    echo "Good Start"
    rm ./Sources/AuthMeUI.xcframework.zip
    cp $1/AuthMeUI.xcframework.zip ./Sources/
    rm ./Sources/AuthMe.xcframework.zip
    cp $1/AuthMe.xcframework.zip ./Sources/
    echo "AuthMeUI checksum:"
    swift package compute-checksum ./Sources/AuthMeUI.xcframework.zip
    echo "AuthMe checksum:"
    swift package compute-checksum ./Sources/AuthMe.xcframework.zip
else
    echo "empty Path"
fi
