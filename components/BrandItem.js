const React = require('react');
const { Text, View, StyleSheet, TouchableOpacity, Image } = require('react-native');
const { Card, IconButton } = require('react-native-paper');

function BrandItem(props) {
  console.log(props)
  return (
    <Card style={styles.card}>
      <Card.Content style={styles.cardContent}>
        <View style={styles.leftContent}>
          {props.logo && (
            <Image
              source={{ uri: props.logo }}
              style={{
                width: 40,
                height: 40,
                // borderRadius: '50%'
              }} // Adjust dimensions as needed
              resizeMode="cover" // or "contain" based on your preference
            />
          )}
        </View>
        <View style={styles.rightContent}>
          <Text style={styles.title}>{props.title}</Text>
          <Text style={styles.subtitle}>{props.description}</Text>
          <TouchableOpacity onPress={() => console.log('Pressed')}>
            <IconButton icon="heart" color="#FF5733" size={24} />
          </TouchableOpacity>
        </View>
        <View>

          <TouchableOpacity onPress={() => console.log('Pressed')}>
            <Text style={styles.redirectButton}>Web Link</Text>
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
  redirectButton: {
    padding: 10,
    backgroundColor: '#21f'
  }
});

module.exports = BrandItem;
