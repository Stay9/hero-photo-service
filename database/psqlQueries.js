const connection = require('./index.js');

// Get all the photos and listing details associated with one listing 
const getListingPhotos = (listingId, whenGotten) => {
  const Query = `SELECT * FROM listings INNER JOIN photos ON listing_id = listings.id WHERE listing_id = $1;`;
  connection.query(Query, [listingId], (err, res) => {
    if (err) {
      console.error('Database side error in retrieving data from the listings table ', err);
      whenGotten(err);
    } else {
      // console.log('Database side success in retriving data from the listings table ');
      whenGotten(null, res);
    }
  });
}; 

// test query 
// getListingPhotos(1, (err, res) => {
//   if (err) {
//     console.log('Fail to get listing');
//   } else {
//     console.log('Successfully get listing');
//   }
// });

module.exports = {
  getListingPhotos,
}