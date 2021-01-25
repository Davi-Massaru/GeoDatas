## Project description

This project contains an example of how we get to manipulate geographic data on an IRIS Intersystem platform.


It holds a simple scheme about restaurants and deliverypeople, checking the distance between them.


The platform also has a REACT made interface to view data and a REST layer, allowing to handle endpoints.

## Prerequisites

Verify if you have Docker, Node JS and Yarn downloaded and installed.

## Installation 

Clone/git pull the repository into any local directory

```
$ git clone 
```

Open the terminal in this directory and run for build the backend:

```
$ docker-compose build --no-cache
```

Run the IRIS container with your project:

```
$ docker-compose up -d
```

## Install Front-End

Create and configure your token at https://account.mapbox.com/auth/signin/ and copy to file ".env.exemple"  in ```/front/web/.env.exemple```
Rename the file to ```.env```


To load the front-end just enter the front / web folder and run the following commands

```
$ yarn install
$ yarn start
```


<img src="https://github.com/Davi-Massaru/GeoDatas/blob/main/recorder.gif?raw=true"></img>

In the front-end we have an example of how we can view the data returned by the REST API

In the example we have delivery people who are linked to restaurants.

Clicking on the map We define an observation point, the COUNT field defines how many deliverers the API will return, and the restaurantID field will only search for deliverers from the desired restaurant.

Example if we click anywhere and fill
COUNT 1 and restaurantID 2
The delivery man closest to the chosen point, who works for the restaurant with ID 2, will appear


## About the projet

The project allows to carry out queries related to distance, for data that have the attributes of latitude and longtude, through SQL variables.

From the User.SQLvar class we have the methods "Distance" and "LocalityIsWithin" that we can use to make these calculations based on the Haversine formula.


## 


