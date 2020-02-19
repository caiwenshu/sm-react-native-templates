/**
 * Created on 17:44 2018/06/14.
 * 项目根路径，用于开发调试，跟index_bundle.js配合开发
 * by wangtieshan
 */

import './common/index';

let ROOT = require('./src/Root');
global.mainComponent = ROOT;

// 业务代码的执行
// business_execute();