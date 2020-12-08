#!/bin/bash

export SDK_NAME="watchosArm32"
./gradlew SharedCode:packForXcode
export SDK_NAME="watchosArm64"
./gradlew SharedCode:packForXcode
export SDK_NAME="watchosX86"
./gradlew SharedCode:packForXcode

xcodebuild -create-xcframework \
-framework SharedCode/build/xcode-frameworks/watchosArm64/SharedCode.framework \
-framework SharedCode/build/xcode-frameworks/watchosArm32/SharedCode.framework \
-framework SharedCode/build/xcode-frameworks/watchosX86/SharedCode.framework \
-output framework-output/SharedCode.xcframework
