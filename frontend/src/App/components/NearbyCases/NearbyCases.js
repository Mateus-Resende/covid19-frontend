import React from "react";
import './NearbyCases.scss';

import Map from './Map'

class NearbyCases extends React.Component {
  render () {
    return (
      <div className="NearbyCases">
        <div className="content-title">
          <h1>Casos Próximos</h1>
        </div>
        <div className="content-body">
          <Map />
        </div>
      </div>
    );
  }
}

export default NearbyCases;
