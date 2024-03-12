import React from 'react'
import MyTabs from '../navigation/MyTabs'
import MyBrands from './MyBrands'
import MyOffers from './MyOffers'
import Home from './Home'


const Tabs = () => {
  const tabs = [
    {
      name: "Home",
      component: Home,
      icon: 'home'
    },
    {
      name: "MyOffers",
      component: MyOffers,
      icon: 'octagram'
    },
    {
      name: "MyBrands",
      component: MyBrands,
      icon: 'braille'
    },
  ]
  return (
    <MyTabs tabs={tabs} />
  )
}

export default Tabs