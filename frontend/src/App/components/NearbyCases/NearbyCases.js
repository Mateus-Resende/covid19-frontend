import React, { useState, useEffect } from "react";
import MapComponent from '../Map/Map'
import './NearbyCases.scss';

const NearbyCases = () => {
  const [isMarkerShown, setIsMarkerShown] = useState(false)
  const [occurrences, setOcurrences] = useState([])
  const [error, setError] = useState(null)

  const fetchCases = () => {
    fetch(`http://back/cases`, {
      mode: 'cors',
      cache: 'no-cache',
      credentials: 'same-origin',
      headers: {
        'Content-Type': 'application/json'
      }
    })
    .then(res => res.json())
    .then(data => setOcurrences(data.data))
    .catch(err => setError(err))
  }

  useEffect(() => {
    fetchCases()
  }, [])

  const showMarker = () => {
    setIsMarkerShown(true)
  }

  const handleMarkerClick = () => {
    setIsMarkerShown(false)
    showMarker()
  }

  return (
    <div className="NearbyCases">
      <div className="content-title">
        <h1>Casos Próximos</h1>
      </div>
      <div className="content-body">
        {
          error ?
          null :
          <MapComponent
            isMarkerShown={isMarkerShown}
            onMarkerClick={handleMarkerClick}
            occurrences={occurrences}
          />
        }
      </div>
    </div>
  );
}

export default NearbyCases;
