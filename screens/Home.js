import React from 'react'
import OffersScreen from './OffersScreen'
import BottomTabs from '../navigation/bottomTabsNavigation'
import Offers from './OffersScreen'
import Brands from './Brands'

const Home = () => {
  const tabs = [
    {
      name: 'Offers',
      component: Offers
    },
    {
      name: 'Brands',
      component: Brands
    },
  ]
  return (
    <BottomTabs tabs={tabs} />
  )
}

export default Home