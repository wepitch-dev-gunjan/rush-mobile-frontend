import React, { useEffect, useContext } from 'react';
import { ScrollView, Text, StyleSheet } from 'react-native';
import OfferItem from '../components/offer/OfferItem';
import MySearchbar from '../components/MySearchbar';
import { UserContext } from '../contexts/UserContext';
import { View } from 'react-native';
import BrandItem from '../components/BrandItem';

function Brands() {
  const { brands, fetchBrands } = useContext(UserContext);

  useEffect(() => {
    fetchBrands();
  }, []);

  return (
    <View>
      <MySearchbar fetchFunction={(fetchBrands)} />
      <ScrollView contentContainerStyle={styles.container}>
        {brands.map((brand, index) => (
          <BrandItem
            key={index}
            title={brand.title}
            logo={brand.logo}
            description={brand.description}
            redirect_link={brand.redirect_link}
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

export default Brands;
