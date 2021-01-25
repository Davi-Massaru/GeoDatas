import React, { useEffect, useState } from 'react';
import { LeafletMouseEvent } from 'leaflet';
import { Link } from 'react-router-dom';
import { FiPlus, FiArrowRight } from 'react-icons/fi';
import { Map, TileLayer, Marker, Popup } from 'react-leaflet';

import logo from '../images/logo.svg';


import '../styles/pages/map.css';

import mapIcon from '../utils/mapIcon';
import bicycleIconMark from '../utils/bicycle';
import motorcycleIconMark from '../utils/motorcycle';

import api from '../services/api';

interface Deliveryman {
    Id: number;
    Name: string;
    vehicleType: string;
    latitude: number;
    longitude: number;
    distance: number;
    Restaurant: number;
}

function MapView() {
    const [couriers, setCouriers] = useState<Deliveryman[]>([]);
    
    const [position, setPosition] = useState({ latitude: -23.44487, longitude: -46.45976 })

    const [count, setCout] = useState("20");
    const [restaurantId, setRestaurantId] = useState("");

    useEffect(() => {
        api.get("Deliveryman/"+position.latitude+"/"+position.longitude,{
            params:{
                top:count,
                restaurantId:restaurantId
            }
        }).then(response => {
            setCouriers(response.data);
        });
    }, [count,restaurantId, position]);
    
    function handleMapClick(event: LeafletMouseEvent) {
        const { lat, lng } = event.latlng;
    
        setPosition({
          latitude: lat,
          longitude: lng,
        });
      }
    
    return (
        <div id="page-map">
            <aside>
                <header>
                    <img src={logo} alt="Happy" />

                    <div className="input-block">
                        <label>count </label>
                        <input 
                            id="count"
                            value={count}
                           onChange={event => setCout(event.target.value)}
                        />
                    </div>

                    <div className="input-block">
                        <label>restaurantId </label>
                        <input 
                            id="restaurantId"
                            value={restaurantId}
                           onChange={event => setRestaurantId(event.target.value)}
                        />
                    </div>

                </header>
            </aside>

            <Map center={[-23.44487,-46.45976]} zoom={12} style={{width: '100%', height: '100%'}} onClick={handleMapClick}>
                <TileLayer url={`https://api.mapbox.com/styles/v1/mapbox/light-v10/tiles/256/{z}/{x}/{y}@2x?access_token=${process.env.REACT_APP_MAPBOX_TOKEN}`} />

                <Marker icon={mapIcon} position={[position.latitude, position.longitude]}>
                </Marker>
                
                {couriers.map(deliveryman => {
                    return (
                        <Marker icon={ (deliveryman.vehicleType == "bicycle") ? bicycleIconMark : motorcycleIconMark } position={[deliveryman.latitude, deliveryman.longitude]} key={deliveryman.Id}>
                            <Popup closeButton={false} minWidth={240} maxWidth={240} className="map-popup">
                                Name: {deliveryman.Name}, <br></br>
                                By: {deliveryman.vehicleType},<br></br>
                                  {deliveryman.distance}  km away
                            </Popup>
                        </Marker>
                    );
                })}
            </Map>
        </div>
    );
}

export default MapView;
