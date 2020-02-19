#!/usr/bin/env bash
# validate template framework version
# 重定向项目的启动脚本，增加模板内容的检查
#

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

if [ -d "dist" ]; then
    rm -rf dist
fi

val=`sm-metro-bundler validate`

# echo "执行结果.."
# echo $val

if [[ "${val}" == "1" ]]; then
exitWithMessage "当前不是最新版本，请在当前项目下执行sm-metro-bundler upgrade后,再操作"
fi

# run cli
node node_modules/react-native/local-cli/cli.js start
