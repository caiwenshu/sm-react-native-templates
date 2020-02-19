/**
 * Created on 15:19 2019/04/13.
 * file name SMNavigator
 * by wangtieshan
 */

import React from 'react';

import { View, StyleSheet, Text } from 'react-native';

import SafeAreaView from 'react-native-safe-area-view';

export default class ENavigationBar extends React.Component {

    render() {
        return (
            <SafeAreaView style={styles.container}>
                <View style={[StyleSheet.absoluteFill, styles.backView]}/>
                <View style={styles.bar}>
                    <Text style={styles.barTitle}>加载中...</Text>
                    <View style={{ width: 60, height: 1 }}/>
                </View>
            </SafeAreaView>
        );
    }
}

const styles = StyleSheet.create({
    container: {
        flexDirection: 'column',
        justifyContent: 'flex-end',
        alignItems: 'stretch',
        alignSelf: 'stretch'
    },
    backView: {
        backgroundColor: 'white'
    },
    bar: {
        flexDirection: 'row',
        alignItems: 'center',
        height: 44
    },
    barTitle: {
        fontSize: 18,
        color: 'black',
        fontWeight: '600',
        flex: 1,
        textAlign: 'center'
    }
});