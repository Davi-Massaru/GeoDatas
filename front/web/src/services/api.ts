import axios from 'axios';

const api = axios.create({
    baseURL: 'http://localhost:49157/api/GeoData'
});

export default api;
