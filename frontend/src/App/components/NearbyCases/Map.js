import React, { useState, useEffect } from 'react'
import MapComponent from '../Map/MapRenderer'

const Map = () => {
  const [isMarkerShown, setIsMarkerShown] = useState(false)
  const [occurrences, setOcurrences] = useState([])
  const [error, setError] = useState(null)

  const fetchCases = () => {
    fetch(`http://localhost:3000/cases`, {
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

  if (error) {
  } else {
    return (
      <MapComponent
        isMarkerShown={isMarkerShown}
        onMarkerClick={handleMarkerClick}
        occurrences={occurrences}
      />
    )
  }
}

export default Map
