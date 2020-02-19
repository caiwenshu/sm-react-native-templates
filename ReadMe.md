# React native 什马React Native模板

##目的
	
保证什马所有的业务模块，都可以跟模板库同步。同时原生端(ios/android)可以下载对应的common.bundle进行集成和源码对比

##使用方式

1. 使用 `sm-metro-bundler-cli init ProductName`进行新建业务项目
2. 运行`npm run start` 进行项目联调开发
3. 运行 `./buildBundle.sh ios/android` 进行打包

sm-metro-bundler-cli 命令集合请参考对应的文档.


##项目结构


>sm-react-native-templates
>>common (公共模块代码)
>> 
>>dist（发布包）
>>
>>scripts (自动化脚本)
>>
>>**src (业务代码所在地)**
>>
>>buildBundle.sh （打包脚本）
>>
>>devServer.sh (开发运行脚本)
>>
>>index.js (项目入口)
>>
>>package.json (项目配置)
>>
>>prepublish.sh 
>>
>>ReadMe.md (项目指引)
>>
>>template.json (项目模板版本)
>>

## 问题

1. 对于common.bundle有疑问可以直接使用版本中对应的`common_framework_format.bundle`来进行对比
2. 项目中所有的package.json文件依赖都固定版本，不设定动态版本
