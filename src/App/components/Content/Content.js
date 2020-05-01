import React from 'react';
import './Content.scss'

import StatsHeader from '../StatsHeader/StatsHeader'
import Map from '../Map/Map';
import Footer from '../Footer/Footer';

const Content = function () {
  return (
    <div className="Content">
      <StatsHeader />
      <Map />
      <Footer />
    </div>
  );
}

export default Content
