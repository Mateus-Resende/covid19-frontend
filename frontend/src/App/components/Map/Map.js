/*global google*/
import React, { useState, useEffect } from 'react'
import { compose, withProps } from "recompose"
import { withScriptjs, withGoogleMap, GoogleMap, Marker, DirectionsRenderer } from "react-google-maps"

const MyMapComponent = compose(
  withProps({
    googleMapURL: `https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=geometry,drawing,places&key=${process.env.REACT_APP_GOOGLE_MAPS_API_KEY}`,
    loadingElement: <div style={{ height: `100%` }} />,
    containerElement: <div style={{ width: '85%', height: `800px` }} />,
    mapElement: <div style={{ height: `100%`, }} />,
  }),
  withScriptjs,
  withGoogleMap
)((props) => {
  const [ownPosition, setOwnPosition] = useState(null)
  const [center, setCenter] = useState({lat: -19.928519, lng: -43.93640})
  const [route, setRoute] = useState(null)

  const printCurrentLocation = () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
        var pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude
        }
        setOwnPosition(pos)
        setCenter(pos)
      })
    }
  }

  useEffect(() => {
    printCurrentLocation()
  }, [])

  const handleDestinationClick = (point) => {
    const directionsService = new google.maps.DirectionsService();
    directionsService.route(
      {
        origin: ownPosition,
        destination: {lat: point.latLng.lat(), lng: point.latLng.lng()},
        travelMode: google.maps.TravelMode.DRIVING,
        waypoints: []
      },
      (result, status) => {
        if (status === google.maps.DirectionsStatus.OK) {
          setRoute(result)
        }
      }
    )
  }

  return (
    <GoogleMap
      defaultZoom={14}
      defaultCenter={center}
    >
      {props.occurrences ?
          props.occurrences.map((occurrence) => {
            return <Marker position={{ lat: occurrence.lat, lng: occurrence.lng }} onClick={handleDestinationClick} />
          }) :
          null}
      {route
        ? <DirectionsRenderer directions={route} />
        : null}
      {ownPosition && ownPosition.lat && ownPosition.lng
        ? <Marker key="ownPosition" position={{lat: ownPosition.lat, lng: ownPosition.lng }} label="Sua localização"/>
        : null}


    </GoogleMap>
  )
})

export default MyMapComponent
