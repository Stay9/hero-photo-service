const express = require('express');
const path = require('path');
const Queries = require('../database/Queries.js');

const app = express();

// making a middleware to tarck all incoming requests
app.use((req, res, next) => {
  console.log('Request method: ', req.method);
  next();
});

// access the static files
app.use(express.static(path.join(__dirname, '../client/dist')));

app.get('/listings/:listing_id/photos', (req, res) => {
  const listingId = req.params.listing_id;
  // query the database to get all data from the listing_photos table
  Queries.query(listingId, (err, results) => {
    if (err) {
      console.log('Server side error in query to get data from the listings_data table', err);
    } else {
      console.log('Server side success in query to get data from the listings_data table', res);
      res.json(results);
    }
  });
  console.log('Passed in listing_id is : ', req.params.listing_id);
  // res.send(200);
});

app.listen(3000, (err) => {
  if (err) {
    console.log('Error connecting to the port :', err);
  } else {
    console.log('Hero Photo server is listening on port 3000');
  }
});
