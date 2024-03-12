import React, { useState } from 'react';
import { Drawer, Colors } from 'react-native-paper';

const MyDrawer = () => {
  const [active, setActive] = useState('');

  return (
    <Drawer.Section title="Some title">
      <Drawer.Item
        style={{ backgroundColor: Colors.lightGreen500 }}
        icon="star"
        label="First Item"
      />
      <Drawer.Item
        label="Second Item"
        active={active === 'second'}
        onPress={() => setActive('second')}
      />
    </Drawer.Section>
  );
};

export default MyDrawer;
