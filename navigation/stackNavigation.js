import React from 'react'
import { createNativeStackNavigator } from '@react-navigation/native-stack';
const Stack = createNativeStackNavigator();

const MyStack = ({ stacks }) => {
  console.log(stacks)
  return (

    <Stack.Navigator initialRouteName={stacks[0].name}>
      {stacks.map((stack, i) => (
        <Stack.Screen key={i} name={stack.name} component={stack.component} options={{ title: stack.name }} />
      ))}
    </Stack.Navigator>

  )

}

export default MyStack