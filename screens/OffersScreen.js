import React, { useEffect, useContext } from 'react';
import { ScrollView, Text, StyleSheet } from 'react-native';
import OfferItem from '../components/offer/OfferItem';
import MySearchbar from '../components/MySearchbar';
import { UserContext } from '../contexts/UserContext';
import { View } from 'react-native';

function Offers() {
  const { offers, fetchOffers } = useContext(UserContext);

  useEffect(() => {
    fetchOffers();
  }, []);

  return (
    <View>
      <MySearchbar fetchFunction={(fetchOffers)} />
      <ScrollView contentContainerStyle={styles.container}>
        {offers.map((offer, index) => (
          <OfferItem
            key={index}
            name={offer.name}
            image={offer.image}
            category={offer.category}
            brand={offer.brand}
            location={offer.location}
            valid={offer.valid}
          />
        ))}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flexGrow: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  title: {
    padding: 24,
    fontSize: 24,
    fontWeight: 'bold',
    borderRadius: 10, // Add border radius
    borderWidth: 1, // Add border width
    borderColor: '#1111111a', // Add border color
  },
});

export default Offers;
