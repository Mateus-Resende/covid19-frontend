import React from "react";
import './WhereToTest.scss';

import Map from './Map'

class WhereToTest extends React.Component {
  render () {
    return (
      <div className="WhereToTest">
        <div className="content-title">
          <h1>Onde Realizar o Teste</h1>
        </div>
        <div className="content-body">
          <Map />
        </div>
      </div>
    );
  }
}

export default WhereToTest;
