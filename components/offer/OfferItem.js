const React = require('react');
const { Text, View, StyleSheet, TouchableOpacity, Image } = require('react-native');
const { Card, Avatar, IconButton } = require('react-native-paper');

function OfferItem(props) {
  console.log(props)
  return (
    <Card style={styles.card}>
      <Card.Content style={styles.cardContent}>
        <View style={styles.leftContent}>
          {/* <Avatar.Icon size={64} icon="image" /> */}
          {props.image && (
            <Image
              source={{ uri: props.image }}
              style={{ width: 78, height: 78 }} // Adjust dimensions as needed
              resizeMode="cover" // or "contain" based on your preference
            />
          )}
        </View>
        <View style={styles.rightContent}>
          <Text style={styles.title}>{props.name}</Text>
          {/* <Text style={styles.subtitle}>{props.category}</Text>
          <Text style={styles.subtitle}>{props.brand}</Text> */}
          <Text style={styles.subtitle}>{props.location}</Text>
          <Text style={styles.valid}>{props.valid ? 'Valid' : 'Expired'}</Text>
          <TouchableOpacity onPress={() => console.log('Pressed')}>
            <IconButton icon="heart" color="#FF5733" size={24} />
          </TouchableOpacity>
        </View>
      </Card.Content>
    </Card>
  );
}

const styles = StyleSheet.create({
  card: {
    width: '100%',
    margin: 10,
    borderRadius: 10,
  },
  cardContent: {
    flexDirection: 'row',
  },
  leftContent: {
    padding: 10,
  },
  rightContent: {
    flex: 1,
    padding: 10,
  },
  title: {
    fontSize: 18,
    fontWeight: 'bold',
  },
  subtitle: {
    fontSize: 16,
    marginBottom: 5,
  },
  valid: {
    fontSize: 16,
    color: '#008000',
    marginTop: 5,
    marginBottom: 5,
  },
});

module.exports = OfferItem;
