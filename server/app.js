// require('newrelic');

const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const Queries = require('../database/psqlQueries.js'); 
// const compression = require('compression');
const redis = require("redis");
const client = redis.createClient();

const app = express();

app.use((req, res, next) => {
  // compression(); 
  next();
});

app.use(express.static(path.join(__dirname, '../client/dist')));

app.use(bodyParser.json());

client.on('error', function(err){
  console.log('Something went wrong ', err);
});

const getPhotos = (req, res) => {
  const listingId = req.params.listing_id;
  // client.get(listingId, (err, result) => {
  //   if (result) {
  //     res.send(result);
  //   } else {
  //     Queries.getListingPhotos(listingId, (err, results) => {
  //       if (err) {
  //         res.sendStatus(500).send(err);
  //       } else {
  //         res.json(results);
  //       }
  //     });
  //   }
  // });
  client.get(listingId, (err) => {
    if (err) {
      console.log(err);
      // res.sendStatus(400).send(err);
    } else {
      Queries.getListingPhotos(listingId, (err, results) => {
        if (err) {
          res.sendStatus(500).send(err);
        } else {
          res.json(results.rows);
        }
      });
    }
  })
};


// const getPhotos = (req, res) => {
//   const listingId = req.params.listing_id;
//   Queries.getListingPhotos(listingId, (err, results) => {
//     if (err) {
//       res.sendStatus(500).send(err);
//     } else {
//       res.json(results);
//     }
//   });
// };

app.get('/listings/:listing_id/photos', getPhotos);

module.exports = app;