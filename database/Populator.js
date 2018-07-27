// model to populate database
const connection = require('./index.js');

// to populate the users table
const populateUsers = () => {
  for (let i = 1; i <= 100; i += 1) {
    const userNames = ['Neon', 'Omega', 'Kookaburra', 'RagingBull', 'Asylum', 'Flurry', 'Ollie', 'Scoobie', 'Brave', 'Guaymas', 'Pinochio', 'Danana', 'Pepita', 'Padila', 'Ninja', 'Bonza'];
    const years = ['2018', '2017', '2016', '2015', '2014'];
    const months = ['01', '03', '05', '07', '09'];
    const days = ['10', '13', '22', '18', '25'];
    const dateIndex = Math.floor(Math.random() * 5); // up to index 4
    const date = `${years[dateIndex]}-${months[dateIndex]}-${days[dateIndex]}`;
    const rand0and15 = Math.floor(Math.random() * 16); // up to index 15
    const userName = userNames[rand0and15];
    const userPhotoUrl = `https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user${rand0and15}.jpg`;

    const theQuery = `INSERT INTO users (user_name, user_membership_date, user_photo_url) VALUES ('${userName}', '${date}', '${userPhotoUrl}')`;
    connection.query(theQuery, (err, res) => {
      if (err) {
        console.log('Error in populating the users table', err);
      } else {
        console.log('Success in populating the users table', res);
      }
    });
  }
};


// to populate the lists table
const populateLists = () => {
  const listNames = ['My fav list!', 'Practical wuff houses', 'Da bestest', 'Super classy', '100% Chic'];
  let theQuery = '';
  for (let i = 1; i <= 100; i += 1) {
    // some users will have a list by default and others will not
    const listIndex = Math.floor(Math.random() * 5); // up to index 4
    const listName = listNames[listIndex];
    theQuery = `INSERT INTO lists (list_name, list_user_id) VALUES ('${listName}', ${i})`;
    connection.query(theQuery, (err, res) => {
      if (err) {
        console.log('Error in populating the lists table ', err);
      } else {
        console.log('Success in populating the lists table ', res);
      }
    });
  }
};


// to populate the listings table
const populateListings = () => {
  const hostName = ['Neon', 'Omega', 'Kookaburra', 'RagingBull', 'Asylum', 'Flurry', 'Ollie', 'Scoobie', 'Brave', 'Guaymas', 'Pinochio', 'Danana', 'Pepita', 'Padila', 'Ninja', 'Bonza'];

  const mockListingData = {
    adjectives: ['mewtiful', 'spacious', 'gllamarous', 'whale-built', 'open air', 'cozy', 'brand new', 'vibrant'],
    penType: ['doghouse', 'barn', 'fishbowl', 'lions den', 'nest', 'quiet hermit shell'],
    preposition: ['in', 'by', 'close to'],
    locale: ['ruff neighborhood', 'dog park', 'upscale guppie area', 'cowtown'],
  };

  const streetAdr = ['Woof Street', 'Miaw Street', 'Bone Street', 'Toy Street', 'Playground Street', 'Doggy Street', 'Kitty Street', 'Cooltown Street', 'Pet Street', 'Animal Town', 'Zomby Street', 'Thriller Street', 'Treat Street', 'Doggy Street', 'Rat Street', 'Kitten Street'];
  const cities = ['Miami', 'Port-au-Prince', 'Peking', 'Quito', 'Berlin', 'Kingston', 'Lagos', 'Capetown', 'Accra', 'Dakhar', 'Maputo', 'Tokyo', 'Bogota', 'Brasilia', 'London', 'Mexico City'];
  const countries = ['United States', 'Haiti', 'China', 'Ecuador', 'Germany', 'Jamaica', 'Nigeria', 'South Africa', 'Ghana', 'Senegal', 'Mozambique', 'Japan', 'Columbia', 'Bresil', 'England', 'Mexico'];
  const getRandomInt = (min, max) => Math.floor(Math.random() * (max - min + 1) + min);


  const populateListingDescriptionsTable = () => {
    const adjectiveIndex = getRandomInt(0, mockListingData.adjectives.length - 1);
    const penTypeIndex = getRandomInt(0, mockListingData.penType.length - 1);
    const prepositionIndex = getRandomInt(0, mockListingData.preposition.length - 1);
    const localeIndex = getRandomInt(0, mockListingData.locale.length - 1);
    const description = `${mockListingData.adjectives[adjectiveIndex]} ${mockListingData.penType[penTypeIndex]} ${mockListingData.preposition[prepositionIndex]} ${mockListingData.locale[localeIndex]}`;
    return description;
  };


  for (let i = 1; i <= 100; i += 1) {
    // generate random number between 1 and 5
    const rand0and15 = Math.floor(Math.random() * 16); // up to index 15
    const listingAverage = Math.floor(Math.random() * 4); // up to 4
    const listingTotalReviews = Math.floor(Math.random() * 120);
    const listingDesc = populateListingDescriptionsTable();
    const listingHostPhotoUrl = `https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host${rand0and15}.jpg`;
    const address = `${streetAdr[rand0and15]}, ${cities[rand0and15]}, ${countries[rand0and15]}`;
    const theQuery = `INSERT INTO listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url, listing_address) VALUE ('${listingDesc}', ${listingAverage}, ${listingTotalReviews}, '${hostName[rand0and15]}', '${listingHostPhotoUrl}', '${address}' )`;
    connection.query(theQuery, (err, res) => {
      if (err) {
        console.log('Error in populating the listings table ', err);
      } else {
        console.log('Success in populating the listings table ', res);
      }
    });
  }
};

// to populate the listing_lists table
const populateListingsLists = () => {
  for (let i = 1; i <= 100; i += 1) {
    const theQuery = `INSERT INTO listings_lists (listing_id, list_id) VALUES (${i}, ${i})`;
    connection.query(theQuery, (err, res) => {
      if (err) {
        console.log('Error in populating the listings_list table ', err);
      } else {
        console.log('Success in populating the listings_list table ', res);
      }
    });
  }
};

// to populate the listing_photos table
// we want each listing to have 2 unique photos (1 to 200) and 13 random photos from indices 201 to 266
const populateListingPhotos = () => {
  const photoDescriptions = ['comfy bed', 'spacious room', 'where the cool ones stay', 'presidential suite', 'glamorous bed'];
  let photoCount = 1;
  let photoId = 0;
  for (let i = 1; i <= 100; i += 1) {
    for (let x = 0; x < 15; x += 1) {
      const index = Math.floor(Math.random() * 5); // up to 4
      const description = photoDescriptions[index];

      if (x === 0 || x === 1) {
        photoId = photoCount;
        photoCount += 1;
      } else {
        photoId = Math.floor(Math.random() * (266 - 200 + 1) + 200);
      }
      const photoUrl = `https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/entry${photoId}.jpg`;
      const theQuery = `INSERT INTO listing_photos (photo_description, photo_url, photo_listing_id) VALUES ('${description}', '${photoUrl}', ${i})`;
      connection.query(theQuery, (err, res) => {
        if (err) {
          console.log('Error in populating the listings table ', err);
        } else {
          console.log('Success in populating the listings table ', res);
        }
      });
    }
  }
};


// Invoke functions to populate the database
populateUsers();
populateLists();
populateListings();
populateListingsLists();
populateListingPhotos();
