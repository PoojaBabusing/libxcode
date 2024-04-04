#!/bin/sh

# -------------- config --------------

# Uncomment for debugging
set -x

# Set bash script to exit immediately if any commands fail
set -e

moduleName="libxcode"

iphoneosArchiveDirectoryPath="/$moduleName-iphoneos.xcarchive"
iphoneosArchiveDirectory="$( pwd; )$iphoneosArchiveDirectoryPath"

iphoneosArchiveDirectoryPath="/$moduleName-iphonesimulator.xcarchive"
iphoneosSimulatorDirectory="$( pwd; )$iphoneosArchiveDirectoryPath"

outputDirectory="$( pwd; )/$moduleName.xcframework"

## Cleanup
rm -rf $iphoneosArchiveDirectory
rm -rf $iphoneosSimulatorDirectory
rm -rf $outputDirectory

# # Archive
# xcodebuild archive -scheme $moduleName \
#      -archivePath $iphoneosArchiveDirectory \
#      -sdk iphoneos \
#      SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

## iOS Simulator Archive      
xcodebuild archive -scheme $moduleName \
    -configuration Release \
    -archivePath $iphoneosSimulatorDirectory \
    -destination "generic/platform=iOS Simulator" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

## XCFramework
xcodebuild -create-xcframework \
    -framework "$iphoneosSimulatorDirectory/Products/Library/Frameworks/$moduleName.framework" \
    -output $outputDirectory

## Cleanup
rm -rf $iphoneosArchiveDirectory
rm -rf $iphoneosSimulatorDirectory