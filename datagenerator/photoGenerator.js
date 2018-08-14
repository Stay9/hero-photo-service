// Create 10M records of photos in JSON for MongoDB
const faker = require('faker');
const fs = require('fs');

const writeStream = fs.createWriteStream('data.json');
writeStream.write('[');
const numEntries = 10000001;
let i = 1;

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; 
}

function getEightRandom() {
  var arr = [];
  for (var i = 0; i < 8; i++) {
    arr.push(getRandomInt(1, 1047));
  }
  return arr;
}

function write() {
  let ok = true;
  while (i < numEntries && ok) {
    let str = `{"id":${i}, "listing_name": "Listing ${i}", "photo_listing_id": ${getRandomInt(1, numEntries)}, "listing_review_average": ${getRandomInt(1, 5)}, "photos_url": "${getEightRandom()}"}`;
    if (i !== numEntries - 1) str += ',';
    else str += ']';
    if ((i + 1) % 100000 === 0) {
      console.log(((i + 1) / 1000000) + ' mil photo entries created');
    }
    i += 1;
    ok = writeStream.write(str);
  }
  if (i < numEntries) {
    writeStream.once('drain', write);
  }
}
write();