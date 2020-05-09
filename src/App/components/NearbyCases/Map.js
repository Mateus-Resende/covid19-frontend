import React, { Component } from 'react';

import { Map, InfoWindow, Marker, GoogleApiWrapper } from 'google-maps-react';

import config from '../../../config';

export class SimpleMap extends Component {
  state = {
    showingInfoWindow: false,
    activeMarker: {},
    selectedPlace: {},
    ownPosition: false
  };

  confirmedCases = [
    { id: 0, lat: -19.922061878273, lng: -43.932363599180 },
    { id: 1, lat: -19.933095349589, lng: -43.935465045541 },
    { id: 2, lat: -19.922378239418, lng: -43.921476506511 },
    { id: 3, lat: -19.934495233617, lng: -43.938668537312 },
    { id: 4, lat: -19.913738423055, lng: -43.921358703418 },
    { id: 5, lat: -19.936722378451, lng: -43.928340476854 },
    { id: 6, lat: -19.937122318365, lng: -43.939162867581 },
    { id: 7, lat: -19.918809681629, lng: -43.939089776511 },
    { id: 8, lat: -19.929874469267, lng: -43.938778685542 },
    { id: 9, lat: -19.920723492680, lng: -43.933545370917 },
    { id: 10, lat: -19.915241344354, lng: -43.927659374896 },
    { id: 1, lat: -19.937765850463, lng: -43.923741783955 },
    { id: 12, lat: -19.924120030303, lng: -43.943264856542 },
    { id: 13, lat: -19.932153542103, lng: -43.924147719668 },
    { id: 14, lat: -19.925756286827, lng: -43.946175618783 }
  ]

  onMarkerClick = (props, marker, e) =>
    this.setState({
      selectedPlace: props,
      activeMarker: marker,
      showingInfoWindow: true
    });

  onMapClicked = (props) => {
    if (this.state.showingInfoWindow) {
      this.setState({
        showingInfoWindow: false,
        activeMarker: {}
      })
    }
  };

  componentDidMount = () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition((position) => {
        let pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude
        };
        this.setState({ ownPosition: pos })
      })
    }
  }

  render () {
    const style = {
      height: '85vh',
      width: '70%',
      display: 'block',
      position: 'relative',
    }

    const confirmedCases = this.confirmedCases.map((position) => {
      return <Marker onClick={this.onMarkerClick}
        position={position}
        key={position.key} />
    })

    const currentLocation = this.state.ownPosition ?
      <Marker location={this.state.ownPosition} /> :
      null

    return (
      <Map google={this.props.google}
          onClick={this.onMapClicked}
          style={style}
          initialCenter={{lat: -19.928519, lng: -43.93640}}
          zoom={14}>

        {currentLocation}
        {confirmedCases}

        <InfoWindow
          marker={this.state.activeMarker}
          visible={this.state.showingInfoWindow}>
            <div>
              <h3>Caso confirmado</h3>
            </div>
        </InfoWindow>
      </Map>
    );
  }
}

export default GoogleApiWrapper({
  apiKey: config.GOOGLE_MAPS_API_KEY
})(SimpleMap)
