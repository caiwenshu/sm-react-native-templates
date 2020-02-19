/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

'use strict'

import 'react';
import 'react-native';
import 'prop-types';
import 'react-native/Libraries/Core/InitializeCore';

import React from 'react';

import { AppRegistry, View } from 'react-native';

import ENavigationBar from './ENavigationBar'

export var mainComp = null;

//改方法为注册原生app实践，通过原生app加载完成触发回调
se.event.register("ToggleLoadModule",function (event) {
    console.info("event moduleId:" + event.moduleId);
    if (event && event.moduleId && global.mainComponent) {
        mainComp = global.mainComponent;
        callback();
    }
})

let callback;

global.on_bussiness_didload = function () {
    mainComp = global.mainComponent;
    callback();
}

class StartComponent extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            trigger:false,
        };
        callback = () => {
            this.setState({"trigger":true})
        }
    }

    componentDidUpdate() {
        console.info("componentDidUpdate");
    }

    render() {
        console.info("StartComponent");
        var _content = null;
        if (mainComp) {
            _content = React.createElement(mainComp, this.props);
            return <View style={{ flex: 1}}>{_content}</View>
        }

        return <View style={{ flex: 1}}>
            <ENavigationBar></ENavigationBar>
        </View>;
    }
}

AppRegistry.registerComponent('framework', () => StartComponent);


// module.exports = StartComponent;