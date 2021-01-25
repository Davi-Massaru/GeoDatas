import Leaflet from 'leaflet';

import mapMarkerImg from '../images/map-marker.svg';

const mapMarker = Leaflet.icon({
    iconUrl: mapMarkerImg,
  
    iconSize: [28, 38],
    iconAnchor: [29, 68],
    popupAnchor: [0, -60]
})

export default mapMarker;
