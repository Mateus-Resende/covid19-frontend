import React, { useState, useEffect } from "react";
import "./WhereToTest.scss";
import Map from "../Map/Map"



const WhereToTest = () => {
  const [places, setPlaces] = useState([])
  const [errors, setError] = useState(null)

  const fetchPlaces = () => {
    fetch(`http://localhost:3000/test-places`, {
      mode: "cors",
      cache: "no-cache",
      credentials: "same-origin",
      headers: {
        "Content-Type": "application/json"
      }
    })
    .then(res => res.json())
    .then(data => setPlaces(data.data))
    .catch(err => setError(err))
  }

  useEffect(() => {
    fetchPlaces()
  }, [])

  return (
    <div className="WhereToTest">
      <div className="content-title">
        <h1>Onde Realizar o Teste</h1>
      </div>
      <div className="content-body">
        { errors
          ? <div>{errors}</div>
          : <Map occurrences={places} /> }
      </div>
    </div>
  );
}

export default WhereToTest;
