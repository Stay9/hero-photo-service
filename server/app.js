require('newrelic');

const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
// const Queries = require('../database/Queries.js'); // for mySQL
const Queries = require('../database/psqlQueries.js'); // for PostgreSQL
const compression = require('compression');
const redis = require("redis");
const client = redis.createClient();

const app = express();

// making a middleware to tarck all incoming requests
app.use((req, res, next) => {
  // console.log('Request method: ', req.method);
  compression(); // GZIP all assets
  next();
});

// access the static files
app.use(express.static(path.join(__dirname, '../client/dist')));

app.use(bodyParser.json());

const getPhotos = (req, res) => {
  const listingId = req.params.listing_id;
  client.get(listingId, (err, result) => {
    if (result) {
      res.send(result);
    } else {
      Queries.getListingPhotos(listingId, (err, results) => {
        if (err) {
          console.log('Server side error in query to get data from the listings_data table', err);
        } else {
          // console.log('Server side success in query to get data from the listings_data table');
          res.json(results);
        }
      });
    }
  });
};

app.get('/listings/:listing_id/photos', getPhotos);

module.exports = app;