import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createMaterialBottomTabNavigator } from '@react-navigation/material-bottom-tabs';
import MaterialCommunityIcons from 'react-native-vector-icons/MaterialCommunityIcons';
import MyOffers from '../screens/MyOffers';
import MyBrands from '../screens/MyBrands';
import MyStack from './stackNavigation';

const Tab = createMaterialBottomTabNavigator();

function MyTabs({ tabs }) {
  return (
    <Tab.Navigator
      activeColor="#f0edf6"
      inactiveColor="#3e2465"
      barStyle={{
        backgroundColor: '#694fad',
        paddingBottom: 0
      }}
    >
      {tabs.map((tab, i) => (
        <Tab.Screen
          key={i}
          name={tab.name}
          component={tab.component}
          options={{
            tabBarIcon: ({ color }) => (
              <MaterialCommunityIcons name={tab.icon} color={color} size={26} />
            )
          }}
        />
      ))}
    </Tab.Navigator>
  );
}

export default MyTabs;