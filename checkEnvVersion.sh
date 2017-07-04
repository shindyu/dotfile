#!/bin/bash
## color set
RED='\033[1;31m'
YELLOW='\033[1;33m'
NO_COLOR='\033[0m'

## fix version
fix_carthage_version="0.20.1"
fix_pods_version="1.2.1"
fix_xcode_version="8.3.2"
fix_swift_version="3.1"

carthage_version=$(carthage version)
echo "=== checking carthage version ..." $carthage_version
if [ "$carthage_version" != "$fix_carthage_version" ]; then
    echo -e ${RED} "The specified version is different from the version of the current local environment"
    echo -e ${YELLOW} "upgrade the version of carthage? [y/n]" ${NO_COLOR}
    read answer_carthage
    case $answer_carthage in
        "" | "Y" | "y" | "yes" | "Yes" | "YES" ) brew upgrade carthage;;
        * ) ;;
    esac
    echo -e ${NO_COLOR}
fi

pods_version=$(pod --version)
echo "=== checking cocoapods version ..." $pods_version
if [ "$pods_version" != $fix_pods_version ]; then
    echo -e ${RED} "The specified version is different from the version of the current local environment"
#    echo -e ${YELLOW} "upgrade the version of cocoapods? [y/n]"
#    read answer_cocoapods
#    case $answer_cocoapods in
#        "" | "Y" | "y" | "yes" | "Yes" | "YES" ) gem install cocoapods -v $fix_pods_version;;
#        * ) ;;
#    esac
    echo -e ${NO_COLOR}
fi

xcode_version_info=($(xcodebuild -version))
xcode_version=${xcode_version_info[1]}
echo "=== checking Xcode version ..." $xcode_version
if [ "$xcode_version" != $fix_xcode_version ]; then
    echo -e ${RED} "The specified version is different from the version of the current local environment"
    echo -e ${NO_COLOR}
fi

swift_version_info=($(swift -version))
swift_version=${swift_version_info[3]}
echo "=== checking Swift version ..." $swift_version
if [ "$swift_version" != $fix_swift_version ]; then
    echo -e ${RED} "The specified version is different from the version of the current local environment"
    echo -e ${NO_COLOR}
fi
