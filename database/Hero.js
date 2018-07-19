// model make queries to the hero database
const connection = require('./index.js');


// populating the users table
const populateUsers = () => {
  for (let i = 1; i <= 100; i + 1) {
    const userName = `user ${i}`;
    const membershipDate = '06/2018';

    const theQuery = `INSERT INTO users (user_name, user_membership_date) VALUES ('${userName}', '${membershipDate}')`;
    connection.query(theQuery, (err, res) => {
      if (err) {
        console.log('Error in populating the users table', err);
      } else {
        console.log('Success in populating the users table', res);
      }
    });
  }
};

// populating the lists table
const populateLists = () => {
  for (let i = 1; i <= 100; i + 1) {
    const listName = `My favorite list ${i}`;
    const theQuery = `INSERT INTO lists (list_name, list_user_id) VALUES ('${listName}', ${i})`;
    connection.query(theQuery, (err, res) => {
      if (err) {
        console.log('Error in populating the lists table ', err);
      } else {
        console.log('Success in populating the lists table ', res);
      }
    });
  }
};


// populating the listings table
/*const populateListings = () => {
  const descriptionArray = [

    'The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.',

    'The building is rectangular shaped. The house is partially surrounded by a garden path on two sides.The second floor is the same size as the first, but part of it hangs over the edge of the floor below, creating an overhang on one side and a balcony on the other. This floor follows the same style as the floor below.',

    'The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.',

    'The house itself is surrounded by a gorgeous garden with many hidden lights that make the garden come to life at night.',

    'From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.',

    'The house is equipped with a modern kitchen and one modern bathroom, it also has a small living room, four bedrooms, a large dining area, a lounge area and a snug storage room.',

    'The building is shaped like a circle. The house is half surrounded by a garden path.',

    'The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.',

    'The roof is low and triangular and is covered with wheat straw. Two large chimneys sit at the side of the house. Several small windows let in just enough light to the rooms below the roof.',


    'The house itself is surrounded by a well kept garden. Grass, flower patches and trees have been placed in a stylish way.'];

  const hostName = ['Neon', 'Omega', 'Kookaburra', 'RagingBull', 'Asylum', 'Flurry', 'Ollie', 'Scoobie', 'Brave', 'Guaymas'];


  for (let i = 1; i <= 100; i + 1) {
    // generate random number between 1 and 5
    let rand0and9 = Math.floor(Math.random() * 9);
    let listingAverage = Math.floor(Math.random() * 5) + 1;
    let listingTotalReviews = Math.floor(Math.random() * 120);
    let listingPhotoUrl = `https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/entry${i}.jpeg`;

    const theQuery = `INSERT INTO listings (listing_description, listing_review_average, listing_review_total, listing_host_name, list_host_photo_url) VALUE ('${descriptionArray[rand0and9]}', )`
    }
};*/

//populateUsers();
//populateLists();
