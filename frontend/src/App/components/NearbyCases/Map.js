import React from "react"
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
)((props) =>
  <GoogleMap
    defaultZoom={14}
    defaultCenter={{lat: -19.928519, lng: -43.93640}}
  >
    {props.isMarkerShown && <Marker position={{lat: -19.928519, lng: -43.93640}} onClick={props.onMarkerClick} />}
  </GoogleMap>
)

export default class Map extends React.PureComponent {
  state = {
    isMarkerShown: false,
  }

  componentDidMount() {
    this.showMarker()
  }

  showMarker = () => {
    this.setState({ isMarkerShown: true })
  }

  handleMarkerClick = () => {
    this.setState({ isMarkerShown: false })
    this.showMarker()
  }

  render() {
    return (
      <MyMapComponent
        isMarkerShown={this.state.isMarkerShown}
        onMarkerClick={this.handleMarkerClick}
      />
    )
  }
}
