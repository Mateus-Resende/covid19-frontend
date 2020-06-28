import React, { useEffect } from "react";

import "./OnlineAppointment.scss";

const OnlineAppointment = function () {
  



  return (
    <div className="OnlineAppointment">
      <div className="content-title">
        <h1>Consulta Online</h1>
      </div>
      <div className="content-body">
        {demoWatson()}
      </div>
    </div>
  );
}

export default OnlineAppointment;
