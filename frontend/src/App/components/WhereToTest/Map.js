import React, { Component } from 'react';

import { Map, InfoWindow, Marker, GoogleApiWrapper } from 'google-maps-react';

import Assets from '../../assets/Assets'
import config from '../../../config';

export class SimpleMap extends Component {
  state = {
    showingInfoWindow: false,
    activeMarker: {},
    selectedPlace: {},
    ownPosition: false
  };

  whereToTest = [
    { id: 0, lat: -19.922061878273, lng: -43.932363599180, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 1, lat: -19.933095349589, lng: -43.935465045541, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 2, lat: -19.922378239418, lng: -43.921476506511, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 3, lat: -19.934495233617, lng: -43.938668537312, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 4, lat: -19.913738423055, lng: -43.921358703418, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 5, lat: -19.936722378451, lng: -43.928340476854, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 6, lat: -19.937122318365, lng: -43.939162867581, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 7, lat: -19.918809681629, lng: -43.939089776511, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 8, lat: -19.929874469267, lng: -43.938778685542, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 9, lat: -19.920723492680, lng: -43.933545370917, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 10, lat: -19.915241344354, lng: -43.927659374896, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 11, lat: -19.937765850463, lng: -43.923741783955, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 12, lat: -19.924120030303, lng: -43.943264856542, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 13, lat: -19.932153542103, lng: -43.924147719668, formattedAddress: "Rua Teste 123, Belo Horizonte" },
    { id: 14, lat: -19.925756286827, lng: -43.946175618783, formattedAddress: "Rua Teste 123, Belo Horizonte" }
  ]

  onMarkerClick = (props, marker, e) =>
    this.setState({
      selectedPlace: props,
      activeMarker: marker,
      showingInfoWindow: true
    });

  onMapClicked = () => {
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

    const whereToTest = this.whereToTest.map((position) => {
      return <Marker onClick={this.onMarkerClick}
        position={position}
        key={position.id}
        name={position.formattedAddress}
        icon={{
          url: Assets.WhereToTestIcon,
          anchor: new this.props.google.maps.Point(24,24),
          scaledSize: new this.props.google.maps.Size(48,48)
        }
      } />
    })

    const currentLocation = this.state.ownPosition ?
      <Marker onClick={this.onMarkerClick}
        position={this.state.ownPosition}
        name="Localização Atual"
        key="current-location"
        icon={{
          url: Assets.CurrentLocationMarker,
          anchor: new this.props.google.maps.Point(24,24),
          scaledSize: new this.props.google.maps.Size(48,48)
        }
      } /> : null

    return (
      <Map google={this.props.google}
          onClick={this.onMapClicked}
          style={style}
          initialCenter={{lat: -19.928519, lng: -43.93640}}
          zoom={14}>

        {currentLocation}
        {whereToTest}

        <InfoWindow
          marker={this.state.activeMarker}
          visible={this.state.showingInfoWindow}>
            <div>
              <h3>{this.state.selectedPlace.name}</h3>
            </div>
        </InfoWindow>
      </Map>
    );
  }
}

export default GoogleApiWrapper({
  apiKey: config.GOOGLE_MAPS_API_KEY
})(SimpleMap)
