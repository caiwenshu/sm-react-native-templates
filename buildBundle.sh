#!/usr/bin/env bash
#------------------
#   echo_color
#   对于一些特殊操作进行颜色提示
#------------------
echoc()
{
    echo -e "\033[36m $1 \033[0m"
}

#-------------------------------
#   echo_error
#   执行过程中产生错误的的信息提示
#-------------------------------
echoe()
{
    echo -e "\033[31m $1 \033[0m"
}

# 退出执行并打印提示信息
exitWithMessage() {
    echo "--------------------------------"
    echoe "${1}"
    echo "--------------------------------"
    exit
}

#if [ ! -n "$1" ]; then
#exitWithMessage "平台参数不能为空,请输入android或者ios , run ./buildBundle.sh android / ios"
#fi

echoc "delete dist android folder..."
if [ -d "dist" ]; then
    rm -rf dist/android/
fi

echoc "recreate dist/android/ folder..."
mkdir -p dist/android/index/

#echoc "执行npm install"
#npm install

echoc "执行打包"
echoc "生成android: common.bundle"
sm-metro-bundler bundle --platform android --dev false --entry-file common/index.js  --bundle-output  dist/android/common.bundle  --assets-dest dist/android/  --reset-cache
echoc "生成android: index.bundle"
sm-metro-bundler bundle --platform android --dev false --entry-file index.js  --bundle-output dist/android/index/index.bundle  --assets-dest dist/android/index/  --reset-cache
echoc "生成android: 差分index_.bundle文件"
comm -2 -3 dist/android/index/index.bundle dist/android/common.bundle > dist/android/index/index_.bundle

echoc "格式化android: common.bundle包"
js-beautify dist/android/common.bundle -o dist/android/common_framework_format.bundle




echoc "delete dist ios folder..."
if [ -d "dist" ]; then
    rm -rf dist/ios/
fi

echoc "recreate dist/ios/ folder..."
mkdir -p dist/ios/index/

#echoc "执行npm install"
#npm install

echoc "执行打包"
echoc "生成ios: common.bundle"
sm-metro-bundler bundle --platform ios --dev false --entry-file common/index.js  --bundle-output  dist/ios/common.bundle  --assets-dest dist/ios/  --reset-cache
echoc "生成ios: index.bundle"
sm-metro-bundler bundle --platform ios --dev false --entry-file index.js  --bundle-output dist/ios/index/index.bundle  --assets-dest dist/ios/index/  --reset-cache
echoc "生成ios: 差分index_.bundle文件"
comm -2 -3 dist/ios/index/index.bundle dist/ios/common.bundle > dist/ios/index/index_.bundle

echoc "格式化ios: common.bundle包"
js-beautify dist/ios/common.bundle -o dist/ios/common_framework_format.bundle
