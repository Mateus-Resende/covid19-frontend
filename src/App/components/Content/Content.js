import React from 'react';
import './Content.scss'

import Footer from '../Footer/Footer';
import Map from '../Map/Map';

const Content = function () {
  return (
    <div className="Content">
      <Map />
      <Footer />
    </div>
  );
}

export default Content
