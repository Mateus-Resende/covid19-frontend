import React from 'react';
import './Content.scss'

import News from '../../components/News/News';
import Footer from '../../components/Footer/Footer';

const Content = function () {
  return (
    <div className="Content">
      <News />
      <Footer />
    </div>
  );
}

export default Content
