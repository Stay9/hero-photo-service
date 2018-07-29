const Queries = require('../database/Queries.js');

describe('Query to get listings photos (getListingPhotos)', () => { // must make this an async function so that "await" may work
  test('Output array should have 15 elements', (done) => {
  	 Queries.getListingPhotos(2, (err, listingPhotos) => {
  		expect(listingPhotos.length).toBe(15);
  		done();
  	});
  });

  test('Each element of the output array should be an object with 4 properties', (done) => {
  	 Queries.getListingPhotos(2, (err, listingPhotos) => {
  		expect(listingPhotos[0]).toHaveProperty('id');
  		expect(listingPhotos[0]).toHaveProperty('photo_description');
  		expect(listingPhotos[0]).toHaveProperty('photo_url');
  		expect(listingPhotos[0]).toHaveProperty('photo_listing_id');
  		done();
  	});
  });
});
