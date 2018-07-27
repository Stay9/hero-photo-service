const express = require('express');
const path = require('path');
const bodyParser = require('body-parser')
const Queries = require('../database/Queries.js');

const app = express();

// making a middleware to tarck all incoming requests
app.use((req, res, next) => {
  console.log('Request method: ', req.method);
  next();
});

// access the static files
app.use(express.static(path.join(__dirname, '../client/dist')));

app.use(bodyParser.json());

app.get('/listings/:listing_id/photos', (req, res) => {
  const listingId = req.params.listing_id;
  // query the database to get all data from the listing_photos table
  Queries.getListingPhotos(listingId, (err, results) => {
    if (err) {
      console.log('Server side error in query to get data from the listings_data table', err);
    } else {
      console.log('Server side success in query to get data from the listings_data table', res);
      res.json(results);
    }
  });
  // res.send(200);
});

app.get('/users/:user_id/list', (req, res) => {
  const userId = req.params.user_id;
  // query the database to get all data from the lists table
  Queries.getLists(userId, (err, results) => {
    if (err) {
      console.log('Server side error in query to get data from the lists table ', err);
    } else {
      console.log('Server side success in query to get data from the lists table ', res);
      res.json(results);
    }
  });
});

app.post('/users/:user_id/addList', (req, res) => {
  const userId = req.params.user_id;
  const listName = req.body.list_name;
  // querty the database to insert the new list into the lists table
  Queries.addList(userId, listName, (err, results) => {
    if (err) {
      console.log('Server side error in query to add list to the lists table ', err);
    } else {
      console.log('Server side success in query to add list to the lists table ', res);
      res.sendStatus(201);
    }
  });
});

app.listen(3000, (err) => {
  if (err) {
    console.log('Error connecting to the port :', err);
  } else {
    console.log('Hero Photo server is listening on port 3000');
  }
});
