const faker = require('faker');
const fs = require('fs');

const writeStream = fs.createWriteStream('listings.json');
writeStream.write('[');
const numEntries = 10000000;
let i = 0;

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; 
}

function write() {
  let ok = true;
  while (i < numEntries && ok) {
    let str = `{"id":${i}, "listing_review_average": ${getRandomInt(1, 5)}, "listing_review_total": ${getRandomInt(1, 2000)}, "listing_host_name": "${faker.name.firstName()}", "listing_address": "${faker.address.city()}", "listing_host_photo_url": ${getRandomInt(1, 1000)}, "listing_description": "${faker.lorem.sentences()}", "listing_space_description": "${faker.lorem.sentences()}", "listing_neighborhood_description": "${faker.lorem.sentences()}"}`;
    if (i !== numEntries - 1) str += ',';
    else str += ']';
    if ((i + 1) % 100000 === 0) {
      console.log(((i + 1) / 1000000) + ' mil listings entries created');
    }
    i += 1;
    ok = writeStream.write(str);
  }
  if (i < numEntries) {
    writeStream.once('drain', write);
  }
}
write();