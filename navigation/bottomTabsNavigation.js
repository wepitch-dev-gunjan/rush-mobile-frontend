import React from 'react';
import { createMaterialTopTabNavigator } from '@react-navigation/material-top-tabs';

const Tab = createMaterialTopTabNavigator();

function BottomTabs({ tabs }) {
  return (
    <Tab.Navigator>
      {tabs.map((tab, i) => (
        <Tab.Screen name={tab.name} component={tab.component} />
      ))}
    </Tab.Navigator>
  );
}

export default BottomTabs;