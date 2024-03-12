import React from 'react';
import axios from 'axios';
import { createContext, useState } from "react";
import { backend_url } from "../config";

export const UserContext = createContext();
console.log(backend_url)
export const UserProvider = ({ children }) => {
  const [offers, setOffers] = useState([]);
  const [brands, setBrands] = useState([]);

  const fetchOffers = async (searchQuery) => {
    try {
      const { data } = await axios.get(`${backend_url}/offer`, {
        params: {
          search: searchQuery
        }
      });
      setOffers(data);
    } catch (error) {
      console.error('Error fetching offers:', error);
    }
  };

  const fetchBrands = async (searchQuery) => {
    try {
      const { data } = await axios.get(`${backend_url}/brand`, {
        params: {
          search: searchQuery
        }
      });
      setBrands(data);
    } catch (error) {
      console.error('Error fetching offers:', error);
    }
  };

  return (
    <UserContext.Provider value={{
      offers, setOffers, fetchOffers,
      brands, setBrands, fetchBrands
    }}>
      {children}
    </UserContext.Provider>
  );
};