import React from 'react';
import { View, Text, Button, StyleSheet } from 'react-native';

const WelcomeScreen = ({ navigation }) => {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Welcome to Offer Listing App</Text>
      <Text style={styles.description}>Get started by exploring our offers!</Text>
      <View style={styles.buttonContainer}>
        <Button
          title="Getting Started"
          color="#1A6BE7"
          onPress={() => navigation.navigate('Tabs')}
        />
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF', // Background color
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
  },
  description: {
    fontSize: 18,
    marginBottom: 20,
  },
  buttonContainer: {
    marginTop: 10,
    borderRadius: 10, // Adjust the border radius as needed
    overflow: 'hidden', // Ensure button's border radius is applied correctly
  },
});

export default WelcomeScreen;
