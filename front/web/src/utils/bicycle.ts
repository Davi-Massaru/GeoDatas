import Leaflet from 'leaflet';

import mapMarkerImg from '../images/bicicleta.svg';

const bicycle = Leaflet.icon({
    iconUrl: mapMarkerImg,
  
    iconSize: [38, 48],
    iconAnchor: [29, 68],
    popupAnchor: [0, -60]
})

export default bicycle;
