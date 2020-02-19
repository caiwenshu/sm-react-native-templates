/**
 *
 * Root template
 *
 * */
import React, { Component } from 'react';
import { Text, View } from 'react-native';

class Root extends React.Component {

    render() {
        return (
            <View style={{ flex: 1, justifyContent: "center",backgroundColor:"red", alignItems: "center" }}>
                <Text>Hello, world!</Text>
            </View>
        );
    }
}

module.exports =  Root;