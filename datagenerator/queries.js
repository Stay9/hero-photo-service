// Queries for PostgreSQL
// generate 100 queries using the listings table
// should return 100 rows
function queryGenerator() {
  for (var i = 9999901; i < 10000001; i++) {
    console.log(`SELECT * FROM listings WHERE id = ${i};`);
  }
}
// generate 100 queries using the photos table
// should return 100 rows
function queryGenerator2() {
  for (var i = 79999901; i < 80000001; i++) {
    console.log(`SELECT * FROM photos WHERE id = ${i};`);
  }
}
// generate 100 queries using the foreign key "listing_id" in the photos table to retrieve "host_name" in the listings table
// should return 800 rows
function queryGenerator3() {
  for (var i = 9999901; i < 10000001; i++) {
    console.log(`SELECT host_name FROM listings INNER JOIN photos ON listing_id = listings.id WHERE listing_id = ${i};`);
  }
}
// console.log(queryGenerator3());

// Queries for MongoDB 
function queryMongo() {
  for (var i = 9999901; i < 10000001; i++) {
    console.log(`SELECT * FROM photos WHERE id = ${i};`);
  }
}