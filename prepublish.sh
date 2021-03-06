#!/usr/bin/env bash
#
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

echoe "预备publish..."