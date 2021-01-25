import React from 'react';
import { BrowserRouter, Switch, Route } from 'react-router-dom';


import MapView from './pages/MapView';


function Routes() {
    return (
        <BrowserRouter>
            <Switch>
                <Route path="/" component={MapView} />
            </Switch>
        </BrowserRouter>
    );
}

export default Routes;
