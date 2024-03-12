import React, { useState, useContext } from 'react';
import { UserContext } from '../contexts/UserContext';
import { Searchbar } from 'react-native-paper';

const MySearchbar = ({ fetchFunction }) => {
  const [searchQuery, setSearchQuery] = useState('');

  const handleSearch = () => {
    fetchFunction(searchQuery);
  };

  const handleClear = () => {
    setSearchQuery('');
    fetchFunction('');
  };

  return (
    <Searchbar
      placeholder="Search"
      onChangeText={setSearchQuery}
      value={searchQuery}
      onIconPress={handleSearch}
      onClearIconPress={handleClear}
    />
  );
};

export default MySearchbar;
