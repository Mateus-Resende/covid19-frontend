import React from 'react'
import { compose, withProps } from "recompose"
import { withScriptjs, withGoogleMap, GoogleMap, Marker } from "react-google-maps"

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
  return (
    <GoogleMap
      defaultZoom={14}
      defaultCenter={{lat: -19.928519, lng: -43.93640}}
    >
      {props.occurrences ?
          props.occurrences.map((occurrence) => {
            return <Marker position={{ lat: occurrence.lat, lng: occurrence.lng }} onMarkerClick={props.onMarkerClick} />
          }) :
          null}
    </GoogleMap>
  )
})

export default MyMapComponent
