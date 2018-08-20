require('newrelic');

const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
// const Queries = require('../database/Queries.js'); // for mySQL
const Queries = require('../database/psqlQueries.js'); // for PostgreSQL
const responseTime = require('response-time')
const axios = require('axios');
const redis = require("redis");
const client = redis.createClient();

const app = express();

// making a middleware to tarck all incoming requests
app.use((req, res, next) => {
  // console.log('Request method: ', req.method);
  responseTime();
  next();
});

// access the static files
app.use(express.static(path.join(__dirname, '../client/dist')));

app.use(bodyParser.json());

const getPhotos = (req, res) => {
  const listingId = req.params.listing_id;
  const url = `http://127.0.0.7:3000/listings/${listingId}/photos`;
  // query the database to get all data from the listing_photos table
  // Queries.getListingPhotos(listingId, (err, results) => {
  //   if (err) {
  //     console.log('Server side error in query to get data from the listings_data table', err);
  //   } else {
  //     // console.log('Server side success in query to get data from the listings_data table');
  //     res.json(results);
  //   }
  // });
  return axios.get(url)
    .then(response => {
      const photos = response;
      client.setex(listingId, 3600, JSON.stringify(photos));

      res.send(photos);
    })
    .catch(err => {
      res.send('Server side error in query to get data from the listings_data table');
    });
};

const getCache = (req, res) => {
  const listingId = req.params.listing_id;
  client.get(listingId, (err, result) => {
    if (result) {
      res.send(result);
    } else {
      getPhotos(req, res);
    }
  });
}

app.get('/listings/:listing_id/photos', getCache);

// app.get('/users/:user_id/list', (req, res) => {
//   const userId = req.params.user_id;
//   // query the database to get all data from the lists table
//   Queries.getLists(userId, (err, results) => {
//     if (err) {
//       console.log('Server side error in query to get data from the lists table ', err);
//     } else {
//       console.log('Server side success in query to get data from the lists table ', res);
//       res.json(results);
//     }
//   });
// });

// app.post('/users/:user_id/addList', (req, res) => {
//   const userId = req.params.user_id;
//   const listName = req.body.list_name;
//   // querty the database to insert the new list into the lists table
//   Queries.addList(userId, listName, (err, results) => {
//     if (err) {
//       console.log('Server side error in query to add list to the lists table ', err);
//     } else {
//       console.log('Server side success in query to add list to the lists table ', res);
//       res.sendStatus(201);
//     }
//   });
// });

// app.get('/listings/:listing_id/lists', (req, res) => {
//   const listingId = req.params.listing_id;
//   // query the database
//   Queries.getListsOfListing(listingId, (err, results) => {
//     if (err) {
//       console.log('Server side error in querying listings-lists');
//     } else {
//       console.log('Server side success in querrying listings_lists');
//       res.json(results);
//     }
//   });
// });

// app.post('/listings/:listing_id/lists/:list_id', (req, res) => {
//   const listingId = req.params.listing_id;
//   const listId = req.params.list_id;

//   console.log('listingId is ', listingId);
//   console.log('listId is ', listId);

//   Queries.addToFavorite(listingId, listId, (err, results) => {
//     if (err) {
//       console.log('Server side error in query to add to the listings_lists table ', err);
//     } else {
//       console.log('Server side success in query to add to the listings_lists table ', results);
//       res.sendStatus(201);
//     }
//   });
// });

// app.delete('/listings/:listing_id/lists/:list_id', (req, res) => {
//   const listingId = req.params.listing_id;
//   const listId = req.params.list_id;

//   console.log('listingId is ', listingId);
//   console.log('listId is ', listId);

//   Queries.removeFromFavorite(listingId, listId, (err, results) => {
//     if (err) {
//       console.log('Server side error in query to delete from the listings_lists table ', err);
//     } else {
//       console.log('Server side success in query to delete from the listings_lists table ', results);
//       res.sendStatus(200);
//     }
//   });
// });

// app.get('/listings/:listing_id/details', (req, res) => {
//   const listingId = req.params.listing_id;

//   Queries.getListingDetails(listingId, (err, results) => {
//     if (err) {
//       console.log('Server side error in querying listings');
//     } else {
//       console.log('Server side success in querrying listings');
//       res.json(results);
//     }
//   });
// });

module.exports = app;
