#!/bin/sh

POD_SDK_NAME='TCICSDK_ReplayKit'

sed -i "" -e  "s/s\.version.*= \".*\"/s\.version      = \"$1\"/g" ${POD_SDK_NAME}.podspec

# 更新ReadMe.md
today=$(date +%Y%m%d)

echo "| ${today} | $1 | $2 |" >> README.md

git status
git add *
if [ "$2" ]; then
    git commit -m "更新版本: $1 : 修复信息 : $2 "
else
    git commit -m "更新版本: $1 "
fi

git push origin main

git tag "$1"
git push origin --tags

pod trunk push ${POD_SDK_NAME}.podspec
