// model make queries to the hero database
const connection = require('./index.js');

const getListingPhotos = (listingId, whenGotten) => {
  const theQuery = `SELECT * FROM listing_photos WHERE photo_listing_id = ${listingId}`;
  connection.query(theQuery, (err, res) => {
    if (err) {
      console.log('Database side error in retrieving data from the listing_photos table ', err);
      whenGotten(err);
    } else {
      console.log('Database side success in retriving data from the listing_photos table ', res);
      whenGotten(null, res);
    }
  });
};

// getListingPhotos(2, (err, res) =>{}); // testing

const getLists = (userId, whenGotten) => {
  const theQuery = `SELECT * FROM lists WHERE list_user_id = ${userId}`;
  connection.query(theQuery, (err, res) => {
    if (err) {
      console.log('Database side error in retrieving data from the lists table ', err);
      whenGotten(err);
    } else {
      console.log('Database side success in retrieving data from the lists table ', res);
      whenGotten(null, res);
    }
  });
};

//getLists(4, (err, res) => {});

module.exports = {
  getListingPhotos: getListingPhotos,
  getLists: getLists,
};
