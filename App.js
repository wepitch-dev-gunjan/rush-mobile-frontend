import 'react-native-gesture-handler';
import React from 'react';
import MyStack from './navigation/stackNavigation';
import { UserProvider } from './contexts/UserContext';
import MyDrawer from './navigation/drawerNavigation';
import MyTabs from './navigation/MyTabs';
import WelcomeScreen from './screens/WelcomeScreen';
import OffersScreen from './screens/OffersScreen';
import { NavigationContainer } from '@react-navigation/native';
import Home from './screens/Tabs';
import Tabs from './screens/Tabs';

const App = () => {
  const stacks = [
    {
      name: 'Welcome',
      component: WelcomeScreen
    },
    {
      name: 'Tabs',
      component: Tabs
    },

  ]
  return (
    // <View style={{ flex: 1, backgroundColor: 'red' }} />
    <UserProvider>
      <NavigationContainer>
        <MyStack stacks={stacks} />

        {/* <MyDrawer /> */}
        {/* <MyTabs /> */}
      </NavigationContainer>
    </UserProvider>
  );
};

export default App;
